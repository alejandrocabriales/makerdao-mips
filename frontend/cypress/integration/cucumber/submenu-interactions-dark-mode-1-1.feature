Feature: Submenu interactions                                                                                                          |

  #Dark Mode
  Scenario Outline: Submenu items navigate to the expected links
    Given The user opens the main page
    And Dark mode is toggled
    When Menu "<menu>" is open
    And Mouse goes over submenu dropdown "<subMenu>"
    And Leaf subMenu item "<subMenuItem>" is clicked
    Then Should visit "<url>"

    Examples:
      | menu  | subMenu    | subMenuItem                            | url                                                                                                                                                                                                     |
      # Core units
      | Views | Core Units | All (MIP38c2)                          | /mips/details/MIP38#mip38c2-core-unit-state                                                                                                                                                             |
      | Views | Core Units | Active Budgets                         | /mips/list?customViewName=Active%20Budgets&_DAI%20Budgets=$AND(%23active,%23dai-budget)&_MKR%20Budgets=$AND(%23active,%23mkr-budget)                                                                    |
      | Views | Core Units | CES-001: Collateral Engineering        | /mips/list?customViewName=Collateral%20Engineering%20Services%20Core%20Unit%20(CES-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-ces-001)&_Archive=$AND(NOT(%23active),%23cu-ces-001) |
      | Views | Core Units | COM-001: Governance Communications     | /mips/list?customViewName=Governance%20Communications%20Core%20Unit%20(COM-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-com-001)&_Archive=$AND(NOT(%23active),%23cu-com-001)         |
      | Views | Core Units | DAIF-001: Dai Foundation               | /mips/list?customViewName=Dai%20Foundation%20Core%20Unit%20(DAIF-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-daif-001)&_Archive=$AND(NOT(%23active),%23cu-daif-001)                 |
      | Views | Core Units | DIN-001: Data Insights                 | /mips/list?customViewName=Data%20Insights%20Core%20Unit%20(DIN-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-din-001)&_Archive=$AND(NOT(%23active),%23cu-din-001)                     |
      | Views | Core Units | DECO-001: Deco Fixed-Rate              | /mips/list?customViewName=Deco%20Fixed%20Rate%20Core%20Unit%20(DECO-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-deco-001)&_Archive=$AND(NOT(%23active),%23cu-deco-001)              |
      | Views | Core Units | DUX-001: Development and UX            | /mips/list?customViewName=Development%20and%20UX%20Core%20Unit%20(DUX-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-dux-001)&_Archive=$AND(NOT(%23active),%23cu-dux-001)              |
      | Views | Core Units | EVENTS-001: Events                     | /mips/list?customViewName=Development%20and%20UX%20Core%20Unit%20(DUX-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-events-001)&_Archive=$AND(NOT(%23active),%23cu-events-001)        |
      | Views | Core Units | GOV-001: Governance                    | /mips/list?customViewName=GovAlpha%20Core%20Unit%20(GOV-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-gov-001)&_Archive=$AND(NOT(%23active),%23cu-gov-001)                            |
      | Views | Core Units | GRO-001: Growth                        | /mips/list?customViewName=Growth%20Core%20Unit%20(GRO-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-gro-001)&_Archive=$AND(NOT(%23active),%23cu-gro-001)                              |
      | Views | Core Units | IS-001: Immunefi Security              | /mips/list?customViewName=Immunefi%20Security%20Core%20Unit%20(IS-001)%20Subproposals&_Active%20Subproposals=$AND(%23active,%23cu-is-001)&_Archive=$AND(NOT(%23active),%23cu-is-001)                    |
