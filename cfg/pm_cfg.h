#ifndef PM_CFG_H
#   define PM_CFG_H
#   ifdef __cplusplus
extern "C"
{
#   endif                       /* __cplusplus */
/*===========================================================================*/
/**
 * @file pm_cfg.h
 *
 * Compile-time configuration options for procman.
 *
 * %full_filespec:pm_cfg.h~1:incl:kok_aud#1 %
 * @version %version:1 %
 * @author  %derived_by:dzq92s %
 * @date    %date_modified:Wed Aug 13 11:25:17 2008 %
 *
 *------------------------------------------------------------------------------
 *
 * Copyright 2008 Delphi Technologies, Inc., All Rights Reserved.
 * Delphi Confidential
 *
 *------------------------------------------------------------------------------
 *
 * @section DESC DESCRIPTION:
 *
 * This file defines the configuration parameters available to programs that
 * use the procman block. The file is initially provided as a template in the
 * form of a .h.txt file within the block. Programs using the block cannot
 * modify files within it; so, they must copy the template to a program-editable
 * location and provide the necessary values. Because source files within
 * the block use the .h file (the template with the .txt extension removed),
 * the block will not build until the program has satisfied this configuration
 * requirement.
 *
 * @section ABBR ABBREVIATIONS:
 *   - PM = ProcMan
 *
 * @section TRACE TRACEABILITY INFO:
 *   - Design Document(s):
 *
 *   - Requirements Document(s):
 *
 *   - Applicable Standards (in order of precedence: highest first):
 *     - <a href="http://kogespw1.delcoelect.com:8508/passthru/consumer?name=SW%20REF%20264.15D&doctype=K8DBSDoc">
 *       SW REF 264.15D "Delphi C Coding Standards" [12-Mar-2006]</a>
 *
 * @section DFS DEVIATIONS FROM STANDARDS:
 *   - None.
 */
/*==========================================================================*/

/*===========================================================================*
 * Header Files
 *===========================================================================*/

/*===========================================================================*
 * #define Constants
 *===========================================================================*/

/**
 * This configuration value defines the period of the timer used by procman
 * to time process launches and terminations. Consideration should be given
 * to the granularity required by the system as smaller values will create
 * heavier system loads. The value selected here affects all procman
 * configuration files since the timeout values specified are in terms
 * of number of timer ticks with this resolution.
 */
#   define PM_TIMER_PERIOD_MS 10

/*===========================================================================*
 * #define MACROS
 *===========================================================================*/

/*===========================================================================*
 * Custom Type Declarations
 *===========================================================================*/

/*===========================================================================*/
/*!
 * @file pm_cfg.h
 *
 * @section RH REVISION HISTORY (top to bottom: last revision to first revision)
 *
 * - 13-aug-2008 Kirk Bailey
 *   - Created initial file.
 */
/*===========================================================================*/
#   ifdef __cplusplus
}                               /* extern "C" */
#   endif                       /* __cplusplus */
#endif                          /* PM_CFG_H */
