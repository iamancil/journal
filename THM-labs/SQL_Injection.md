# SQL Injection

**Date:** 05 July 2025  
**Category:** Database Enumeration, SQL injection
**Difficulty:** Medium

---

## 🔍 Enumeration

- Checked for the vulnerability by putting ' in the end of the link 
- Checked the end point,if an integer or not 
- Used various SQL queries and see the output 

## ⚔️ Exploitation

- Used various methods like UNION to exploit 

## 🧠 Key Learnings

- Types of SQL-: i) In-Band SQLi ii) Blind SQLi iii) Out-of-band SQLi 
- In-Band: You exploit and retrieve data with the same command. Easiest of all. It has subtypes like Error based, and Union Based 
- Blind SQLi: You don't get as such output to determine the success of your payload. Mostly used for Auth Bypass. It contains Boolean based (output in the form of Yes/No or 0/1 or TRUE/FALSE) and Time-Based (time determines if the command was successful. Use builtin methods like SLEEP(x)).

## 🛡️ Mitigations (Optional)

- Input Validation 
- Escaping User Input 
- Prepared Statements 
