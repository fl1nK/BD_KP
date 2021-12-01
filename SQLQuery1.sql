/*CREATE DATABASE Policia*/
/*
DROP TABLE ��������������
DROP TABLE �����
DROP TABLE ���������
DROP TABLE ������
*/

CREATE TABLE ������
(
   ID int NOT NULL PRIMARY KEY,
   ������������ DATE NULL,
   ������������� DATE NULL,
   ������� nvarchar(20) NULL,
   ̳��� nvarchar(20) NULL
)
GO

CREATE TABLE ���������
(
   ID int NOT NULL PRIMARY KEY,
   ������� nvarchar(20) NULL,
   �������������� DATE NULL,
   ³� int NULL,
   �������� nvarchar(20) NULL,
   IDCrime int NOT NULL
)
GO

CREATE TABLE ��������������
(
   IDoffender  int NOT NULL UNIQUE,
   ̳������������� nvarchar(20) NULL,
   ��������� nvarchar(20) NULL,
   ĳ�� nvarchar(20) NULL
)
GO

CREATE TABLE �����
(
   IDoffender  int  NOT NULL,
   ����� nvarchar(20) NULL,
   ����������������� nvarchar(20) NULL,
)
GO

---------------------------������---------------------------------------------

ALTER TABLE ��������� 
ADD
FOREIGN KEY (IDCrime) REFERENCES ������ (ID);
GO

ALTER TABLE �������������� 
ADD
FOREIGN KEY (IDoffender) REFERENCES ��������� (ID);
GO

ALTER TABLE ����� 
ADD
FOREIGN KEY (IDoffender) REFERENCES ��������� (ID);
GO

-----------------------���������------------------------------

ALTER TABLE ������
ADD
CHECK (������� IN ('������','�������','���������'))
GO

ALTER TABLE ���������
ADD
CHECK (�������� IN ('��������','���','��������'))
GO

ALTER TABLE ��������������
ADD
CHECK (��������� IN ('���','ͳ')),
CHECK (ĳ�� IN ('���','ͳ'))
GO


INSERT ������
VALUES
(1,'2021/10/11', '2021/11/15', '������','���'),
(2,'2021/9/7', '2021/10/15', '�������','���������'),
(3,'2021/10/9', '2021/10/15', '���������','���������')
GO

INSERT ���������
VALUES
(1,'��������','1999/10/9', 22,'��������',1),
(2,'��������','1988/10/9', 33,'��������',1),
(3,'��������','1989/10/9', 32,'��������',1),
(4,'��������','1970/10/9', 51,'��������',2),
(5,'��������','1972/10/9', 49,'���',2),
(6,'��������','1999/10/9', 22,'��������',2),
(7,'��������','1988/10/9', 33,'��������',3),
(8,'��������','1988/10/9', 33,'���',3),
(9,'��������','1999/10/9', 22,'��������',3)
GO

INSERT ��������������
VALUES
(1,'���','���','ͳ'),
(2,'�����','���','ͳ'),
(3,'���','ͳ','���'),
(4,'���','���','ͳ'),
(5,'���������','���','���'),
(6,'���','���','ͳ'),
(7,'����','ͳ','ͳ'),
(8,'���','���','���'),
(9,'���','ͳ','ͳ')
GO

INSERT �����
VALUES
(1,'AK','����'),
(1,'����','������'),
(4,'AK','����'),
(4,'����','������'),
(5,'AK','����'),
(7,'AK','����'),
(7,'����','������'),
(8,'AK','����'),
(8,'����','������')
GO

SELECT *
FROM ������
SELECT *
FROM ���������
SELECT *
FROM ��������������
SELECT *
FROM �����


---------------------�������------------------------
--B
SELECT MAX(�����������������)
FROM �����

--E
SELECT MAX(̳���)
FROM ������

