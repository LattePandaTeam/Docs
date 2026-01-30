LattePanda Mu x86 compute module utilizes a **260-Pin Edge Connector**, physically compatible with standard laptop **DDR4 SODIMM** memory sockets.

## Mechanical Specs



## Socket Selection Guidelines

While compatible with standard DDR4 sockets, strict adherence to the following selection rules is required to ensure proper mechanical fit and electrical connectivity.

### Critical Rules

- **Pin Count**: Must use a **260-Pin** DDR4 SODIMM socket.
- **Orientation**: Must use **Standard (STD)** type sockets, not Reverse (RVS) type sockets. 

!!! note "How to identify a Standard (STD) socket?"
    
    - **Marking**: Most sockets have "STD" stamped on the plastic body.
    - **Notch Position**: When facing the socket opening (as if inserting the module) with the PCB pads facing down, the Keying Notch should be offset to the LEFT.

- **Height Requirement**: Socket Height should be **≥ 5.2 mm** (For carrier board areas beneath the compute module without components)

    > Due to the retention screws and passive components on the back of the Compute Module, the socket must provide sufficient bottom clearance.

- **Recommended Parts**

    The following sockets are recommended:

    | Height | Brand           | Part Number      |
    | ------ | --------------- | ---------------- |
    | 8.0mm  | TE Connectivity | 2309411-1        |
    | 9.2mm  | FOXCONN         | ASAA821-EASB0-7H |
    | 9.2mm  | LOTES           | ADDR0110-P005A   |
    | 5.2mm  | LOTES           | ADDR0207-P001A   |


### Standoff Selection

After inserting the LattePanda Mu into the SODIMM socket, it must be secured to the carrier board using screws.
The height of the Standoff on the carrier board must match the SODIMM socket height to ensure the compute module sits flat.

- **Matching Table**
  
    | SODIMM Socket Height | Recommended Standoff Height |
    | -------------------- | --------------------------- |
    | 8.0mm                | 5.5mm                       |
    | 9.2mm                | 6.6mm                       |
    | 5.2mm                | 2.6mm                       |
    |*Recommended Tolerance：±0.1mm*||

