# Lecture 2 Introduction to Linux Notes

1. What is an Operating System?
   - An operating system is software that manages both hardware and software.
2. What is a kernel?
   - A kernel is a program that has direct contact with hardware. 
3. Which other parts aside from the kernel identify an OS?
   - Process management - determines how much resources a process is allocated. Enables multiple processes to take place at once, without overlap
   - Memory management - allocates portions of memory to processes.
   - File system - governs file organization and access. A data storage system that allows for mass storage.
4. What is linux and linux distribution?
   - Linux is a monolithic, Unix-like kernel initially developed by Linus Torvalds.  
   - Distributions are operating systems built around the linux kernel, bundling package managers, desktop environments, and userland tools.
5. List at least 4 linux characteristics:
   1. Linux kernel - Monolithic, open source kernel, efficient at managing the interactions between hardware and software
   2. Free and open source - available for anyone regardless of circumstance. The code is also open source, which means anyone can make edits and contributions.
   3. Unix standardization - must be POSIX (portable operating system interface) compliant, a set of standards by the IEEE to ensure compatibility between operating systems, primarily Unix systems. Ensures software portability between systems. 
   4. Modular design - Every piece of the system is modular, allowing users to build onto the OS with files or processes for additional functionality.
6. What is Debian?
   - **Debian** is one of the oldest distributions of linux, which many popular distributions are based on, most notably **Ubuntu**.
   - One of the first distributions that championed free and open source licensing.
   - Thorough testing, stability focused as opposed to being cutting edge.
   - `apt` package management - dependency resolution, allowing for dependency chains to be resolved without headache. 
   - Strong documentation and community support. Democratic maintenance, rigorous developer process, based on the philosophy set forth in the Debian constitution. 
7. List and define the different types of licensing agreements
   - Open-source - Source code that is made available for modification and distribution. Collaboration is encouraged, allowing for distributed development
   - Shareware - Trial-based with the agreement that the user may need to pay after the trial period is over. Allows for testing software before purchase. 
   - Freeware - software is freely available, yet proprietary. User is typically not allowed to distribute or modify it. Source code usually not available.
   - Proprietary - Closed source, the code is not visible to the user. Requires the purchase of a license in order to run the software
8. What is Free Software? Define the 4 freedoms.
   1. Freedom to run the program for any purposes
   2. Freedom to study and change the code at will
   3. Freedom of redistribution - no restrictions on usage, access, or distribution of software
   4. Freedom to distribute modified versions
9.  What is virtualization?
   - Hardware abstraction layer that allows software to host virtual computers
   - Hypervisor manages resource allocation between guest virtual machines 
   - Allows for testing, compartmentalization, and utilization of resources
