# Digital Design with Verilog

This repo documents my learning journey in **RTL design** using Verilog, guided by the book *Digital Design and Computer Architecture* by Harris & Harris.  
Currently building my foundation in **digital design**, writing Verilog, and simulating with **Icarus Verilog + GTKWave**.  

---

## ✅ Topics Covered
- **4:1 Multiplexer**
- **3:8 Decoder**
- **4-bit Comparator**
- **4-bit ALU**

Each design includes:
- RTL implementation
- Testbench (with waveform dump)
- Simulation using Icarus Verilog
- Waveform analysis in GTKWave

---

## 🔧 Tools Used
- [Icarus Verilog](https://steveicarus.github.io/iverilog/) (`iverilog`)
- [GTKWave](http://gtkwave.sourceforge.net/)
- VS Code / Terminal

---

## 📚 Learning Source
- *Digital Design and Computer Architecture* by David Harris & Sarah Harris  
  *(Hands down, this book is 🔥 for digital design basics to CPU architecture.)*

---

## 🧠 Summary of What I’ve Learned So Far
- **Unit 1: Digital Logic Basics** – Learned binary number systems, Boolean algebra, logic gates, and how to minimize expressions using Karnaugh Maps.  
- **Unit 2: Combinational Logic Design** – Designed and implemented MUX, Decoder, Comparators, and ALU in Verilog, and understood propagation delay and logic simplification.  
- **Unit 3: Arithmetic Circuits** – Explored adders (half, full, ripple carry), subtractors, and the basics of arithmetic operations in digital systems.  
- Learned how to write **testbenches**, generate waveforms using **GTKWave**, and debug infinite loop issues in Verilog simulations.  
- Feeling confident with **combinational circuits**, and ready to jump into **sequential logic and FSM design next**!  

---

## ▶ How to Run
Example:
```bash
iverilog -o alu_sim alu.v tb_alu.v
vvp alu_sim
gtkwave wave.vcd

