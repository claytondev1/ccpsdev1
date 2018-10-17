
 view: vschoolname {
#   # Or, you could make this view a derived table, like this:
   derived_table: {
     sql:
    Select
    s.schoolkey as SchoolKey
  , e.EducationOrganizationKey
  , e.NameOfInstitution as SchoolName
    from [dbo].[dimEducationOrganization] as  e
     join dimschool as s
    on s.EducationOrganizationKey = e.EducationOrganizationKey
       ;;
   }
#
   # Define your dimensions and measures here, like this:
   dimension: SchoolKey {
     description: "Unique ID for each School"
     type: number
     sql: ${TABLE}.SchoolKey ;;
 }
#
 dimension: EducationOrganizationKey {
     description: "Unique ID for each organization ID"
     type: number
     sql: ${TABLE}.EducationOrganizationKey;;
   }
#
  dimension: SchoolName {
    description: "Name for School"
    type: string
    sql: ${TABLE}.SchoolName;;
  }
 }
