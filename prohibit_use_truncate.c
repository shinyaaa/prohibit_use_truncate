#include "postgres.h"
#include "fmgr.h"
#include "tcop/utility.h"

PG_MODULE_MAGIC;

void _PG_init(void);
void _PG_fini(void);

/* Saved hook values in case of unload */
static ProcessUtility_hook_type prev_ProcessUtility = NULL;

static void
prohibit_use_truncate(PlannedStmt *pstmt, const char *queryString,
					ProcessUtilityContext context,
					ParamListInfo params, QueryEnvironment *queryEnv,
					DestReceiver *dest, char *completionTag)
{
	Node *parsetree = pstmt->utilityStmt;
	if (nodeTag(parsetree) == T_TruncateStmt)
		elog(ERROR, "Don't use TRUNCATE.");
	else
		standard_ProcessUtility(pstmt, queryString,
								context, params, queryEnv,
								dest, completionTag);
}

void
_PG_init(void)
{
	prev_ProcessUtility = ProcessUtility_hook;
	ProcessUtility_hook = prohibit_use_truncate;
}

void
_PG_fini(void)
{
	ProcessUtility_hook = prev_ProcessUtility;
}