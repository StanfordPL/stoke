  .text
  .globl _ZNSsixEj
  .type _ZNSsixEj, @function

#! file-offset 0xeeb60
#! rip-offset  0xaeb60
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSsixEj:                     #        0xaeb60  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaeb60  5      OPC=movq_m64_r64    
  movl %edi, %ebx               #  2     0xaeb65  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaeb67  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaeb6c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaeb6f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaeb72  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaeb74  4      OPC=movl_r32_m32    
  movl %esi, %r12d              #  8     0xaeb78  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaeb7b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaeb7e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaeb80  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r10d  #  12    0xaeb82  5      OPC=movl_r32_m32    
  testl %r10d, %r10d            #  13    0xaeb87  3      OPC=testl_r32_r32   
  js .L_aebc0                   #  14    0xaeb8a  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaeb8c  2      OPC=movl_r32_r32    
  nop                           #  16    0xaeb8e  1      OPC=nop             
  nop                           #  17    0xaeb8f  1      OPC=nop             
  nop                           #  18    0xaeb90  1      OPC=nop             
  nop                           #  19    0xaeb91  1      OPC=nop             
  nop                           #  20    0xaeb92  1      OPC=nop             
  nop                           #  21    0xaeb93  1      OPC=nop             
  nop                           #  22    0xaeb94  1      OPC=nop             
  nop                           #  23    0xaeb95  1      OPC=nop             
  nop                           #  24    0xaeb96  1      OPC=nop             
  nop                           #  25    0xaeb97  1      OPC=nop             
  nop                           #  26    0xaeb98  1      OPC=nop             
  nop                           #  27    0xaeb99  1      OPC=nop             
  nop                           #  28    0xaeb9a  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  29    0xaeb9b  5      OPC=callq_label     
  movl %ebx, %ebx               #  30    0xaeba0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  31    0xaeba2  4      OPC=movl_r32_m32    
  nop                           #  32    0xaeba6  1      OPC=nop             
  nop                           #  33    0xaeba7  1      OPC=nop             
  nop                           #  34    0xaeba8  1      OPC=nop             
  nop                           #  35    0xaeba9  1      OPC=nop             
  nop                           #  36    0xaebaa  1      OPC=nop             
  nop                           #  37    0xaebab  1      OPC=nop             
  nop                           #  38    0xaebac  1      OPC=nop             
  nop                           #  39    0xaebad  1      OPC=nop             
  nop                           #  40    0xaebae  1      OPC=nop             
  nop                           #  41    0xaebaf  1      OPC=nop             
  nop                           #  42    0xaebb0  1      OPC=nop             
  nop                           #  43    0xaebb1  1      OPC=nop             
  nop                           #  44    0xaebb2  1      OPC=nop             
  nop                           #  45    0xaebb3  1      OPC=nop             
  nop                           #  46    0xaebb4  1      OPC=nop             
  nop                           #  47    0xaebb5  1      OPC=nop             
  nop                           #  48    0xaebb6  1      OPC=nop             
  nop                           #  49    0xaebb7  1      OPC=nop             
  nop                           #  50    0xaebb8  1      OPC=nop             
  nop                           #  51    0xaebb9  1      OPC=nop             
  nop                           #  52    0xaebba  1      OPC=nop             
  nop                           #  53    0xaebbb  1      OPC=nop             
  nop                           #  54    0xaebbc  1      OPC=nop             
  nop                           #  55    0xaebbd  1      OPC=nop             
  nop                           #  56    0xaebbe  1      OPC=nop             
  nop                           #  57    0xaebbf  1      OPC=nop             
.L_aebc0:                       #        0xaebc0  0      OPC=<label>         
  leal (%r12,%rax,1), %eax      #  58    0xaebc0  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx          #  59    0xaebc4  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12         #  60    0xaebc9  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  61    0xaebce  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  62    0xaebd1  3      OPC=addq_r64_r64    
  popq %r11                     #  63    0xaebd4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  64    0xaebd6  7      OPC=andl_r32_imm32  
  nop                           #  65    0xaebdd  1      OPC=nop             
  nop                           #  66    0xaebde  1      OPC=nop             
  nop                           #  67    0xaebdf  1      OPC=nop             
  nop                           #  68    0xaebe0  1      OPC=nop             
  addq %r15, %r11               #  69    0xaebe1  3      OPC=addq_r64_r64    
  jmpq %r11                     #  70    0xaebe4  3      OPC=jmpq_r64        
                                                                             
.size _ZNSsixEj, .-_ZNSsixEj

