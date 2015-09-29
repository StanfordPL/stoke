  .text
  .globl _ZNSdD1Ev
  .type _ZNSdD1Ev, @function

#! file-offset 0x13c1c0
#! rip-offset  0xfc1c0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSdD1Ev:                           #        0xfc1c0  0      OPC=<label>         
  movl 0xff42506(%rip), %ecx          #  1     0xfc1c0  6      OPC=movl_r32_m32    
  movl %edi, %eax                     #  2     0xfc1c6  2      OPC=movl_r32_r32    
  leal 0x8(%rax), %edx                #  3     0xfc1c8  3      OPC=leal_r32_m16    
  movl %eax, %eax                     #  4     0xfc1cb  2      OPC=movl_r32_r32    
  movl $0x1003e6a0, 0x8(%r15,%rax,1)  #  5     0xfc1cd  9      OPC=movl_m32_imm32  
  leal 0xc(%rax), %edi                #  6     0xfc1d6  3      OPC=leal_r32_m16    
  movl %edx, %edx                     #  7     0xfc1d9  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  8     0xfc1db  4      OPC=movl_m32_r32    
  nop                                 #  9     0xfc1df  1      OPC=nop             
  subl $0xc, %ecx                     #  10    0xfc1e0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                     #  11    0xfc1e3  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx            #  12    0xfc1e5  4      OPC=addl_r32_m32    
  movl 0xff424e1(%rip), %ecx          #  13    0xfc1e9  6      OPC=movl_r32_m32    
  movl %edx, %edx                     #  14    0xfc1ef  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  15    0xfc1f1  4      OPC=movl_m32_r32    
  movl 0xff424c9(%rip), %edx          #  16    0xfc1f5  6      OPC=movl_r32_m32    
  nop                                 #  17    0xfc1fb  1      OPC=nop             
  nop                                 #  18    0xfc1fc  1      OPC=nop             
  nop                                 #  19    0xfc1fd  1      OPC=nop             
  nop                                 #  20    0xfc1fe  1      OPC=nop             
  nop                                 #  21    0xfc1ff  1      OPC=nop             
  movl 0xff424c2(%rip), %ecx          #  22    0xfc200  6      OPC=movl_r32_m32    
  movl %eax, %eax                     #  23    0xfc206  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  24    0xfc208  4      OPC=movl_m32_r32    
  subl $0xc, %edx                     #  25    0xfc20c  3      OPC=subl_r32_imm8   
  movl %edx, %edx                     #  26    0xfc20f  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx            #  27    0xfc211  4      OPC=movl_r32_m32    
  movl %eax, %eax                     #  28    0xfc215  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rax,1)         #  29    0xfc217  9      OPC=movl_m32_imm32  
  addl %eax, %edx                     #  30    0xfc220  2      OPC=addl_r32_r32    
  movl %edx, %edx                     #  31    0xfc222  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  32    0xfc224  4      OPC=movl_m32_r32    
  movl %edi, %edi                     #  33    0xfc228  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)     #  34    0xfc22a  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev            #  35    0xfc232  5      OPC=jmpq_label_1    
  nop                                 #  36    0xfc237  1      OPC=nop             
  nop                                 #  37    0xfc238  1      OPC=nop             
  nop                                 #  38    0xfc239  1      OPC=nop             
  nop                                 #  39    0xfc23a  1      OPC=nop             
  nop                                 #  40    0xfc23b  1      OPC=nop             
  nop                                 #  41    0xfc23c  1      OPC=nop             
  nop                                 #  42    0xfc23d  1      OPC=nop             
  nop                                 #  43    0xfc23e  1      OPC=nop             
  nop                                 #  44    0xfc23f  1      OPC=nop             
                                                                                   
.size _ZNSdD1Ev, .-_ZNSdD1Ev

