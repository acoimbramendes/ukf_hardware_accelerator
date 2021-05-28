# ukf_hardware_accelerator
UKF Hardware Accelerator project, using SoC FPGA. Co-processor RTL

Full project Documentation in ABNT formatting: 
[Final_Document_Thesis.pdf](https://github.com/acoimbramendes/ukf_hardware_accelerator/blob/master/TCC_Anderson_final.pdf)


ABSTRACT

States estimators play a key role in embedded systems primarily for autonomous unmanned aerial vehicles and cars, as they allow the determination of vehicle state such as
position, speed, and height with a higher accuracy. The Unscented Kalman Filter (UKF)
is one of the most promising estimators as it performs better compared to its competitors,
but his high computational cost is notorious and for real-time systems this can be critical.
This paper proposes a solution for this problem. The UKF algorithm processing time was
analyzed, and the Cholesky decomposition was chosen to be accelerate as it consumes
more operational time. Among the possible methodologies to implement a hardware accelerator, it was chosen to use an FPSoC with the Cyclone-V-SoC chip that integrates
an FPGA and a microcontroller (HPS) on the same chip. The micro-architecture was
analyzed and several methodologies to transfer the data between the FPGA and the HPS
were evaluated. A dedicated co-processor for Cholesky’s decomposition calculation was
designed and the digital circuit was tested using the DE0-Nano-SoC development kit. We
could see an acceleration of 2006 % for Cholesky, which represented a final acceleration
of 26 % for the UKF algorithm.
Key-words:UKF. Cholesky. Hardware Accelerator. Cyclone V SoC. DE0-Nano-SoC. FPSoC. Digital Systems. Embedded Systems. VANT.
