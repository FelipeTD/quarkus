CREATE TABLE elections (
    id VARCHAR(40) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id));

CREATE TABLE election_candidate (
    election_id VARCHAR(40) NOT NULL,
    candidate_id VARCHAR(40) NOT NULL,
    votes INTEGER DEFAULT 0,
PRIMARY KEY (election_id, candidate_id));

INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('43f286fe-a991-4d5c-8871-5c53c23dc698', 'http://dummyimage.com/179x100.png/ff4444/ffffff', 'Olga', 'Kapelhof', 'okapelhof0@bbb.org', '209-341-1999', 'Analyst Programmer');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('7c94773d-cacf-480f-bd7e-ec4bdc58c5dc', 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', 'Austin', 'Eddie', 'aeddie1@addthis.com', '551-373-2751', 'Biostatistician I');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('0388f045-5dfb-4bf3-87f9-1be3073d5393', 'http://dummyimage.com/108x100.png/ff4444/ffffff', 'Jarret', 'Grayshan', 'jgrayshan2@liveinternet.ru', '732-860-4253', 'Teacher');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('b76466a0-612d-489c-9f04-3e25d1790b26', 'http://dummyimage.com/249x100.png/ff4444/ffffff', 'Valenka', 'Hauger', 'vhauger3@hao123.com', '948-243-2013', 'Safety Technician III');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('3d920821-f8fa-429f-9c89-1167f5eaeb16', 'http://dummyimage.com/208x100.png/cc0000/ffffff', 'Gilles', 'Petera', 'gpetera4@biblegateway.com', '262-507-1359', 'Statistician III');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('afd1c712-907d-4357-955f-ffba91c79435', 'http://dummyimage.com/174x100.png/ff4444/ffffff', 'Abra', 'Lebbern', 'alebbern5@skyrock.com', '240-342-8874', 'Health Coach I');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('3dbfde05-8893-442d-a9d1-a56ea6bd56fe', 'http://dummyimage.com/157x100.png/cc0000/ffffff', 'Bria', 'Paulino', 'bpaulino6@rakuten.co.jp', '176-410-4717', 'Product Engineer');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('2a137cee-7e5a-4d7a-8463-7f4962f2e986', 'http://dummyimage.com/245x100.png/5fa2dd/ffffff', 'Debora', 'Slatten', 'dslatten7@wisc.edu', '516-562-9208', 'Marketing Assistant');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('560c2d0c-592e-4906-a20e-533a75c9bf00', 'http://dummyimage.com/203x100.png/cc0000/ffffff', 'Deborah', 'Hruska', 'dhruska8@domainmarket.com', '785-892-6958', 'Programmer III');
INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title) VALUES ('ff98c649-d71d-4e8a-a08b-d3d2220e8060', 'http://dummyimage.com/184x100.png/dddddd/000000', 'Carlynn', 'Maseres', 'cmaseres9@craigslist.org', '752-700-2448', 'Speech Pathologist');