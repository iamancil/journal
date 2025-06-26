# [Command Injection]

**Date:** 2025-06-26  
**Category:** [Informatio gathering, Exploitation]  
**Difficulty:** [Easy]

---

## 🔍 Enumeration

- Mostly done by injecting commands in the vulnerable  

## 🧠 Key Learnings

- Two types of CI: i) Blind CI ii) Verbose CI
- Bind CI: Machine doesn't response to commands, manully check if the payload is executed or not 
- Verbose CI: Machine responds, and is fairly easy to exploit

## 🛡️ Mitigations (Optional)

- Input Sanitisation is done to remove '/', '>', and '&'
