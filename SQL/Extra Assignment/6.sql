DROP DATABASE IF EXISTS Extra_Assignment6;
CREATE DATABASE Extra_Assignment6;
USE Extra_Assignment6;

CREATE TABLE Employee(
		EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
        EmployeeLastName VARCHAR(20) NOT NULL,
        EmployeeFirstName VARCHAR(20) NOT NULL,
        EmployeeHireDate DATETIME,
        EmployeeStatus BIT NOT NULL DEFAULT 0,
        SuperVisorID INT,
        SocialSecurityNumber INT,
        FOREIGN KEY (SuperVisorID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Projects(
		ProjectID INT AUTO_INCREMENT PRIMARY KEY,
        ManagerID INT UNIQUE,
        ProjectName VARCHAR(255),
        ProjectStartDate DATETIME,
        ProjectDescription VARCHAR(255),
        ProjectDetail VARCHAR(255),
        ProjectComplatedOn DATETIME,
        FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Project_Modules(
		ModuleID INT AUTO_INCREMENT PRIMARY KEY,
        ProjectID INT,
        EmployeeID INT UNIQUE,
        ProjectModuleDate DATETIME,
        ProjectModulesCompledOn DATETIME,
        ProjectModulesDescription VARCHAR(255),
        FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
        FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Work_Done(
		WorkDoneId INT AUTO_INCREMENT PRIMARY KEY,
        EmployeeID INT,
        ModuleID INT,
        WorkDoneDate DATETIME DEFAULT NULL,
        WorkDoneDescription VARCHAR(50),
        WorkDoneStatus BIT,
        FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
        FOREIGN KEY (ModuleID) REFERENCES Project_Modules(ModuleID)
);

insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (1, 'Snarr', 'Missie', '2021-2-22', DEFAULT, 1, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (2, 'Peyes', 'Westley', '2021-7-2', DEFAULT, 1, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (3, 'Whardley', 'Shayna', '2021-5-9', DEFAULT, 1, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (4, 'Paskerful', 'Melantha', '2021-6-10', DEFAULT,1, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (5, 'Bere', 'Bondon', '2021-5-21', DEFAULT, 1, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (6, 'FitzGeorge', 'Dorrie', '2021-5-23', DEFAULT, 1, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (7, 'Salasar', 'Isa', '2021-11-2', DEFAULT, 1, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (8, 'Royl', 'Domenico', '2021-11-19', DEFAULT, 2, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (9, 'Stillwell', 'Edsel', '2021-7-7', DEFAULT, 3, null);
insert into Employee (EmployeeID, EmployeeLastName, EmployeeFirstName, EmployeeHireDate, EmployeeStatus, SuperVisorID, SocialSecurityNumber) values (10, 'Fitzgerald', 'Dianna', '2021-8-22', DEFAULT, 4, null);

insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (1, 'support.com, Inc.', '2021-5-16', 'Release Thoracic Aorta, Descending, Percutaneous Approach', 'Amputation thru forearm', '2021-7-28');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (2, 'PPlus Trust', '2021-3-2', 'Dilation of R Up Lobe Bronc with Intralum Dev, Via Opening', 'Suture bladder lacerat', '2021-11-22');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (3, 'SteadyMed Ltd.', '2021-9-9', 'Drainage of Left Femoral Shaft with Drain Dev, Open Approach', 'Proc-vessel bifurcation', '2021-6-11');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (4, 'Fanhua Inc.', '2021-9-3', 'Restriction of Anus with Extraluminal Device, Open Approach', 'Finger injury op NOS', '2021-10-23');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (5, 'National Instruments Corporation', '2021-6-1', 'Removal of Intraluminal Device from Kidney, Endo', 'Insert colonic stent NEC', '2021-6-23');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (6, 'Genomic Health, Inc.', '2021-7-7', 'Release Right Main Bronchus, Endo', 'Facial bone x-ray NEC', '2021-3-18');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (7, 'The Blackstone Group L.P.', '2021-2-14', 'Release Right Ankle Tendon, Percutaneous Endoscopic Approach', 'Reclose post op disrupt', '2021-10-16');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (8, 'Columbia Property Trust, Inc.', '2021-2-25', 'Drainage of Right Middle Lobe Bronchus, Perc Approach', 'Laparoscop gastroplasty', '2020-12-14');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (9, 'AllianzGI Convertible & Income Fund II', '2021-8-22', 'Repair Right Cephalic Vein, Percutaneous Endoscopic Approach', 'Endosc inser nasopan tub', '2021-9-28');
insert into Projects (ManagerID, ProjectName, ProjectStartDate, ProjectDescription, ProjectDetail, ProjectComplatedOn) values (10, 'PNC Financial Services Group, Inc. (The)', '2021-8-23', 'Extirpation of Matter from L Verteb Art, Perc Approach', 'Collaterl lig repair NEC', '2021-9-24');

insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (8, 1, '2021-09-23', '2021-05-11', 'Transplant spermat cord');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (2, 2, '2021-02-14', '2021-09-10', 'Open reduc-radius/uln fx');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (8, 3, '2021-09-11', '2021-07-29', 'Pelvic gas contrast xray');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (9, 4, '2021-02-19', '2021-01-07', 'Transjugular liver bx');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (2, 5, '2021-06-25', '2021-08-21', 'Psychiatr somatother NEC');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (5, 6, '2021-08-18', '2021-03-01', 'Suppor verbal psychother');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (7, 7, '2021-05-30', '2021-06-24', 'Thorac seg lung resect');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (5, 8, '2021-01-14', '2021-11-10', 'Adjust gast restrict dev');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (2, 9, '2020-11-26', '2021-08-24', 'Tooth restor by filling');
insert into Project_Modules (ProjectID, EmployeeID, ProjectModuleDate, ProjectModulesCompledOn, ProjectModulesDescription) values (2, 10, '2021-11-12', '2021-04-26', 'Endosc inser nasopan tub');

insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (6, 9, '2021/10/11', 'Cholecystectomy', 1);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (7, 1, '2020/12/12', 'Lap abdperneal resc rec', 1);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (9, 1, '2021/09/18', 'Destruc-ankle lesion NEC', 0);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (2, 8, '2021/11/11', 'Culture-lower GI', 1);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (1, 2, '2021/07/17', 'Injection into joint', 0);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (1, 2, '2020/11/26', 'Intraspin nerve root div', 0);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (6, 3, '2020/12/05', 'Temp-inf xtracap lens ex', 1);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (6, 6, '2021/02/27', 'Gastric freezing', 1);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (1, 6, '2021/01/17', 'Neurectasis', 0);
insert into Work_Done (EmployeeID, ModuleID, WorkDoneDate, WorkDoneDescription, WorkDoneStatus) values (4, 8, '2020/12/23', 'Control anal hemorrhage', 1);

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE Project_Modules ADD CONSTRAINT _edit FOREIGN KEY(ProjectID) REFERENCES Projects(ProjectID) ON DELETE SET NULL;
DROP PROCEDURE IF EXISTS RemoveProject;
DELIMITER $$
CREATE PROCEDURE RemoveProject()
BEGIN
	
	DELETE FROM Projects WHERE month(ProjectComplatedOn)  >= month(ProjectStartDate) + 3 AND ProjectComplatedOn > ProjectStartDate;
    
END$$
DELIMITER ;

CALL RemoveProject();
SELECT *
FROM Projects;

DELIMITER $$
CREATE PROCEDURE Module_Processing(IN _status BIT)
BEGIN
    SELECT *
    FROM Work_Done
    WHERE WorkDoneStatus = _status;
END$$
DELIMITER ;


CALL Module_Processing(1);


