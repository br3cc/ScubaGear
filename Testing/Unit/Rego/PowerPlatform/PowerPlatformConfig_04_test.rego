package powerplatform
import future.keywords
import data.report.utils.NotCheckedDetails

#
# Policy 1
#--
test_NotImplemented_Correct if {
    PolicyId := "MS.POWERPLATFORM.4.1v1"

    Output := tests with input as { }

    RuleOutput := [Result | Result = Output[_]; Result.PolicyId == PolicyId]

    count(RuleOutput) == 1
    not RuleOutput[0].RequirementMet
    RuleOutput[0].ReportDetails == NotCheckedDetails(PolicyId)
}