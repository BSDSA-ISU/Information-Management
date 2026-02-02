# relationship matrix

## Entities & Attributes (the cast)

### Sales_Office

- Office_Number (PK)
- Location

### Employee

- Employee_ID (PK)

- Employee_Name

- Office_Number (FK → Sales_Office)

### Property

- Property_ID (PK)
- Address
- City
- State
- Zip_Code
- Office_Number (FK → Sales_Office)

### Owner

- Owner_ID (PK)
- Owner_Name

|                  | Sales Office                                                                                                     | Employee                                                                                                           | Property                                                | Owner                                                       |
| ---------------- | ---------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------- | ----------------------------------------------------------- |
| **Sales Office** | —                                                                                                                | **Assigned_To (1:N, mandatory target, optional source)** <br> **Manages (1:1, mandatory target, optional source)** | **Lists (1:N, mandatory target, optional source)**      | —                                                           |
| **Employee**     | **Works_For (N:1, mandatory target, optional source)** <br> **Manages (1:1, optional source, mandatory target)** | —                                                                                                                  | —                                                       | —                                                           |
| **Property**     | **Listed_By (N:1, mandatory target, optional source)**                                                           | —                                                                                                                  | —                                                       | **Owned_By (1..*, mandatory source, 0..* optional target)** |
| **Owner**        | —                                                                                                                | —                                                                                                                  | **Owns (0..*, optional source, 1..* mandatory target)** | —                                                           |
