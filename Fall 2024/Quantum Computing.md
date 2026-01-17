Info from [IBM Qiskit Series](https://youtu.be/NTplT4WnNbk?si=PKSjOAUuiufEyFCa)

![[attachments/Pasted image 20241125170925.png|500]]

IBM quantum computers, particularly those in their **Quantum System One** and subsequent systems, are built around **superconducting qubits**. These qubits operate on principles of quantum mechanics and superconductivity, using devices like **transmon qubits** and **Josephson junctions**. Below is an overview of how these components work and how they form a functional quantum computer:

---

## **1. Qubits and Their Formation**

### **Superconducting Qubits**

IBM uses superconducting qubits, which are artificial atoms. These qubits exploit quantum mechanical properties to represent and manipulate quantum states.

- **Transmon Qubits**:
    
    - A transmon is a type of superconducting qubit that is more resistant to noise and decoherence than earlier designs like charge qubits.
    - It is essentially a circuit made of:
        1. **Superconducting materials** (e.g., niobium or aluminum) cooled to near absolute zero to eliminate electrical resistance.
        2. A **Josephson junction**, which is a sandwich of a thin insulating barrier between two superconducting layers.
        3. A **capacitor**, which controls charge buildup and reduces sensitivity to environmental noise.
- **Energy Levels**:
    
    - The transmon has discrete energy levels corresponding to quantum states (ground state |0⟩ and excited state |1⟩). These energy states encode the qubit.
    - The anharmonicity of the Josephson junction ensures that transitions to higher states (|2⟩, |3⟩) are suppressed, isolating the two-level qubit system.

---

## **2. Quantum Coupling and Gate Operations**

### **Coupling Qubits**

Qubits need to interact to perform operations like entanglement or two-qubit gates. IBM uses various coupling mechanisms, such as:

- **Resonators**:
    
    - A superconducting resonator, often a stripline or a lumped LC resonator, couples qubits. It mediates interactions between them while minimizing cross-talk.
    - The resonator acts like a "quantum bus," transferring information between qubits.
- **Direct Coupling**:
    
    - Sometimes qubits are directly coupled via mutual inductance or capacitive coupling, enabling faster gate operations.

### **Quantum Gates**

Quantum gates manipulate qubit states. These operations are implemented using:

- **Microwave Pulses**:
    - Precise microwave signals control transitions between energy levels (e.g., driving |0⟩ to |1⟩).
    - Different pulse shapes encode single-qubit gates (e.g., X,Y,Z,HX, Y, Z, H).
- **Frequency Tuning**:
    - Qubit frequencies are adjusted using magnetic flux control to create conditional operations like controlled-NOT (CNOT) gates.

---

## **3. Error Mitigation and Decoherence**

Superconducting qubits face challenges like noise, decoherence, and errors:

- **Decoherence**:
    - Quantum states lose coherence due to interactions with the environment. IBM minimizes this using:
        - Ultra-cold temperatures (~10 mK) in dilution refrigerators.
        - Shielding from electromagnetic radiation.
- **Error Correction**:
    - IBM employs quantum error correction codes, like the **surface code**, which use multiple physical qubits to form logical qubits.
    - Frequent error detection and correction maintain computational integrity.

---

## **4. Scaling and Integration**

IBM quantum computers are modular, with increasing numbers of qubits and connections:

- **Coupling Maps**:
    - Physical arrangements of qubits define which qubits can interact directly. IBM designs optimized coupling maps for efficient computation.
- **Quantum Volume**:
    - IBM introduced "quantum volume" as a metric to measure the overall performance of a quantum computer. It depends on the number of qubits, connectivity, gate fidelity, and coherence times.

---

## **5. IBM Quantum Ecosystem**

IBM has built an entire software and hardware stack:

- **Hardware**:
    - The quantum processors reside inside a dilution refrigerator, connected to classical electronics for control and readout.
- **Software**:
    - Tools like **Qiskit** allow users to write and execute quantum programs. It abstracts hardware specifics into high-level programming.
- **Cloud Access**:
    - IBM Quantum Experience provides access to quantum computers remotely, democratizing access for research and development.

---

## **Summary of Key Principles**

1. **Qubit Formation**:
    - Transmon qubits formed using superconducting circuits and Josephson junctions.
    - Quantum states encode |0⟩ and |1⟩.
2. **Coupling and Operations**:
    - Coupled using resonators or direct connections.
    - Controlled via microwave pulses and frequency tuning.
3. **Environment**:
    - Operates at near absolute zero to enable superconductivity and minimize decoherence.
4. **Integration**:
    - Modular architectures allow scaling to larger systems, with error correction and noise mitigation.

---
