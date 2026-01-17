
# Linear Optical Quantum Computing Demonstration (KLM-style) — Project Description

## Motivation
Linear optical systems provide a promising, room-temperature platform for quantum information processing because single photons are robust quantum carriers and linear optics components (beam splitters, phase shifters, wave plates) are low-loss and well developed. The KLM protocol demonstrates that scalable quantum computing is, in principle, possible with only linear optics, single-photon sources, ancillary photons and measurement with feedforward. A compact laboratory demonstration that implements the KLM primitives (non-deterministic entangling operations, photon-interference gates, heralding) will both illustrate the core ideas of LOQC and provide a testbed for exploring error sources, loss mitigation, and simple quantum algorithms.

>There's essentially a very standard way to do QC: which is to have highly isolated systems such as ion trap systems which act as qubits.
>Problem:
>You need to have very nice isolation and well controlled environments.

>Photons:
>They demonstrate quantum phenomena through properties like polarization and don't interact with the environment much!
>That's nice!
>BUT... the trouble with photons is that they also don't interact with themselves, making it challenging to have multiqubit gates.
## Aim
Design and implement a bench-scale experimental demonstration of the KLM LOQC primitives that includes:

* Preparation and characterization of approximate single-photon states (heralded or attenuated),
* Implementation of one nondeterministic two-qubit entangling gate (e.g., KLM-style nondeterministic CNOT or NS gate) using ancilla photons and postselection/measurement,
* Measurement and characterization of gate performance (Hong–Ou–Mandel interference visibility, second-order correlation (g^{(2)}(0)), heralding efficiency, and basic process fidelity estimates),
* Documenting practical limits (detector efficiency, losses, multiphoton contamination) and defining simple benchmark targets.

## Plan (high level)

1. **Design optical circuit** on paper/simulation: decide encoding (dual-rail qubit in two spatial modes per logical qubit), ancilla resources for the chosen KLM gate, and measurement ports.
2. **Prepare photon sources**: either quantum-dot single-photon sources or attenuated (weak) coherent pulses as approximate single photons; for heralded single photons, use SPDC if available.
3. **Build the interferometer** on an optical breadboard/bench: mount beamsplitters, mirrors, lenses, phase shifters and wave plates to implement the desired unitary network.
4. **Install detectors and electronics**: single-photon detectors at measurement ports, time-tagging electronics / coincidence unit for heralding and postselection, and classical feedforward path (if implementing active feedforward).
5. **Characterize components**: detector dark counts, detection efficiency, transmission losses, source (g^{(2)}(0)), HOM interference visibility.
6. **Run gate experiments**: collect data for heralded successful gate events, estimate success probability and fidelity.
7. **Analyze and compare** against benchmarks; iterate on alignment, loss reduction, or source improvement.

## Principle (theory summary)

* **Encoding:** Logical qubits are encoded in photonic modes. Dual-rail encoding uses presence of a photon in one of two spatial (or polarization) modes to represent (|0\rangle) and (|1\rangle).
* **KLM primitives:** With linear optics alone, deterministic two-qubit gates are impossible; KLM implements effective nonlinearities using ancilla photons, linear optics networks, and conditional measurement (postselection and feedforward). A common building block is a non-deterministic nonlinear sign (NS) gate combined with teleportation and ancilla resources to enact a CNOT.
* **Interference & indistinguishability:** Quantum interference (e.g., Hong–Ou–Mandel effect) between indistinguishable single photons at beamsplitters is the resource enabling conditional transformations. High indistinguishability, low multiphoton probability, and low loss are critical.
* **Heralding & postselection:** Successful operation is heralded by specific detector click patterns on ancilla detectors; those events are used (or accepted) as gate successes. For a demonstration, passive postselection is acceptable; for scalable implementations, fast feedforward is required.

## Components Needed

(Items you listed are included; each entry contains a short comment on role and practical considerations.)

1. **Wave Plates** (quarter-wave, half-wave)

   * Role: prepare and convert polarization qubits, fine control of polarization for polarization-encoded schemes, compensate polarization rotations introduced by optics.
   * Practical: high-quality zero-order plates recommended; mount in rotation stages for precise setting.

2. **Phase Shifters — Variable**

   * Role: implement controllable relative phases between modes (crucial for unitary interferometers and for tuning interference).
   * Practical: options include mechanical translation stages on mirror mounts (optical path length), piezoelectric mirror mounts for fast fine tuning, or thermo-optic / electro-optic modulators for active control. Characterize phase stability and drift.

3. **Single-Photon Sources**

   * Role: generate the photons used for qubits and ancilla.
   * Options & comments:

     * **Quantum dots**: near-ideal single photons (high purity, near-on-demand). Useful if available; require cryostat and coupling optics.
     * **SPDC (heralded)**: pair production in nonlinear crystals — trigger one photon to herald the other. Widely used in lab demonstrations and provides good heralding purity if spectral filtering and timing are optimized.
     * **Attenuated laser (weak coherent state)**: DIY option; simple to implement by strongly attenuating a conventional laser. This yields a Poissonian photon-number distribution: for mean photon number (\mu) the probabilities are (P(n)=e^{-\mu}\mu^n/n!). For (\mu=0.1), (P(0)=e^{-0.1}\approx 0.9048) (90.5%), (P(1)=0.1,e^{-0.1}\approx 0.09048) (9.05%), and (P(n\ge2)\approx 0.00468) (0.468%). Attenuated lasers are simple but suffer from multiphoton contamination which limits gate fidelity for KLM experiments.
   * Practical: choose based on budget and desired purity. For a convincing KLM demo, heralded or quantum-dot sources are preferred.

4. **Single-Photon Detectors**
   (You provided a Thorlabs product page — high quality Si avalanche photodiodes (APDs) or SPADs are commonly used.)

   * Role: detect presence of single photons for heralding and postselection.
   * Practical: important parameters are detection efficiency (η), timing jitter, dark count rate, and dead time. For visible/near-IR, Si APDs are common; for telecom wavelengths use InGaAs detectors (gated).
   * Example reference: Thorlabs single-photon counting modules (your provided link). Choose detectors with suitable wavelength sensitivity and low dark count for your source. (Link: Thorlabs single-photon detectors.)

5. **Optical Bench**

   * Role: mechanically stable platform for alignment and long-term phase stability.
   * Practical: use vibration-isolated breadboard and rigid mounts; thermal stability is important for interferometric visibility.

6. **Mirrors**

   * Role: route beams and form interferometers.
   * Practical: use high-quality dielectric mirrors for target wavelengths; mount with kinematic mirror mounts for precise alignment.

7. **Lenses**

   * Role: mode-matching between source and fiber or free-space, focusing onto detectors, coupling to single-mode fiber (crucial for spatial mode indistinguishability).
   * Practical: use achromatic lenses if multiple wavelengths are involved; optimize coupling efficiencies to fibers and detectors.

### Additional recommended items (not explicitly listed, but important)

* Beamsplitters: non-polarizing and polarizing beamsplitters (50:50, 33:67 etc.) — essential for KLM networks.
* Single-mode fibers, fiber couplers and fiber beamsplitters: for stable spatial modes and routing.
* Delay lines / adjustable optical path lengths: temporal overlap control for HOM interference.
* Coincidence / time-tagging electronics and logic units (TCSPC, FPGA or commercial coincidence counters) for heralding / postselection and time-resolved correlations.
* Mode cleaners and spectral filters (interference filters or etalons): improve indistinguishability and reduce background.
* Power meters, beam profilers, and alignment lasers (low power, visible) for alignment.

## Individual Component Comments (concise)

* **Wave plates:** use for polarization qubit encoding or to convert polarization to path encoding. Mount with vernier rotation stages.
* **Phase shifters (variable):** piezo mirror mounts give sub-wavelength phase control; for demonstrations a piezo stack with feedback is recommended for stability.
* **Single-photon sources:** if using attenuated coherent states, carefully quantify multiphoton probability (see Poisson example above); if using SPDC, implement narrowband filtering and single-mode fiber coupling to increase indistinguishability.
* **Detectors:** measure dark counts and detection jitter; ensure electronics can discriminate coincident events within the time window set by jitter.
* **Bench/mounting:** thermal isolation and mechanical stability will directly affect interference visibility.
* **Mirrors and lenses:** high-quality optics dramatically affect loss and mode overlap — prioritize good coatings and precision mounts.

## Characterization & Measurement Procedures

* **Second-order correlation (g^{(2)}(0)):** measure using a Hanbury Brown–Twiss setup to quantify single-photon purity. Target: (g^{(2)}(0) \ll 0.5). For high-quality single-photon sources aim for (g^{(2)}(0) < 0.1).
* **HOM interference visibility:** overlap two photons on a 50:50 beamsplitter and measure coincidence dip; visibility near 1 (after correcting for multiphoton and detector imperfections) indicates high indistinguishability. Target visibilities above 0.8 for a clear demonstration.
* **Heralding efficiency:** ratio of detected heralded photons to herald clicks; improves with coupling and detector efficiency.
* **Gate success probability and fidelity:** collect statistics for the chosen KLM gate; compute conditional truth-table and estimate process fidelity relative to ideal gate (expect modest fidelities for simple setups; main value is demonstrating conditional operation and dependence on interference quality).

## Benchmark Aims to be Achieved (practical targets for a bench demo)

These are realistic targets for a small laboratory demonstration that does not use advanced cryogenic quantum dot sources:

1. **Single-photon purity:** (g^{(2)}(0) < 0.1) for the best source available (SPDC with filtering or a good quantum dot); if using attenuated laser, document measured (g^{(2)}(0)) (it will be limited by Poissonian statistics).
2. **HOM visibility:** raw visibility (> 0.7); corrected visibility (accounting for multiphoton and detector effects) (> 0.85).
3. **Heralding / detection efficiency:** combined source-to-detector (including coupling and transmission) ≥ 10% (higher is better — modern labs routinely achieve 30–60% with fiber coupling and good detectors).
4. **Gate success probability:** demonstrate a nondeterministic two-qubit gate with a nonzero heralded success probability consistent with the KLM protocol chosen (e.g., a few percent to tens of percent depending on ancilla resources). Report the measured success rate and the conditional truth-table.
5. **Conditional fidelity:** conditional (postselected) fidelity of output states greater than 0.7 for a convincing demonstration; higher fidelities require better sources/detectors and lower loss.
6. **Reproducibility:** ability to reproduce results (HOM dips and heralded gate events) across multiple runs and days after basic realignment.

## Practical notes, pitfalls, and risk mitigation

* **Multiphoton contamination** from attenuated lasers severely limits gate fidelity; prefer heralded SPDC or quantum dots for stronger claims.
* **Loss:** KLM is extremely sensitive to loss; quantify all transmission losses and include them in fidelity analysis.
* **Detector limitations:** dark counts and dead time create false heralds and reduce effective fidelity. Use gating or coincidence windows to mitigate.
* **Mode matching and indistinguishability:** spatial, spectral and temporal mode matching are critical. Use single-mode fibers and narrow spectral filters; control temporal overlap with delay lines.
* **Feedforward:** for a simple demonstration, feedforward can be omitted and postselection used instead; if you want to illustrate full KLM, implement fast electronics plus active optical switches or phase modulators for feedforward.

## References and further reading

* Knill, E., Laflamme, R., & Milburn, G. J. (2001). A scheme for efficient quantum computation with linear optics. *Nature* 409, 46–52. (KLM original paper.)
* [arXiv: quant-ph/0512071] (you provided this reference).
* Component datasheets, e.g., Thorlabs single-photon counting modules (your detector link).
  *(Include datasheet links and product numbers when ordering to ensure compatibility with wavelength and timing specifications.)*

---

If you would like, I can:

* Convert this into a one-page laboratory protocol (step-by-step experimental procedure) including a suggested optical layout diagram (ASCII or SVG) and a parts list with example specifications and estimated costs, **or**
* Draft a specific circuit (e.g., dual-rail implementation of KLM NS gate + teleportation-based CNOT) with the exact beamsplitter ratios, ancilla requirements, and the expected success probability and postselection logic.

Which follow-up would you prefer?
