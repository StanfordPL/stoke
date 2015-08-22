  .text
  .globl _ZNSsixEj
  .type _ZNSsixEj, @function

#! file-offset 0xef580
#! rip-offset  0xaf580
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSsixEj:                     #        0xaf580  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaf580  5      OPC=movq_m64_r64    
  movl %edi, %ebx               #  2     0xaf585  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaf587  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaf58c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaf58f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaf592  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaf594  4      OPC=movl_r32_m32    
  movl %esi, %r12d              #  8     0xaf598  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaf59b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaf59e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaf5a0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r10d  #  12    0xaf5a2  5      OPC=movl_r32_m32    
  testl %r10d, %r10d            #  13    0xaf5a7  3      OPC=testl_r32_r32   
  js .L_af5e0                   #  14    0xaf5aa  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaf5ac  2      OPC=movl_r32_r32    
  nop                           #  16    0xaf5ae  1      OPC=nop             
  nop                           #  17    0xaf5af  1      OPC=nop             
  nop                           #  18    0xaf5b0  1      OPC=nop             
  nop                           #  19    0xaf5b1  1      OPC=nop             
  nop                           #  20    0xaf5b2  1      OPC=nop             
  nop                           #  21    0xaf5b3  1      OPC=nop             
  nop                           #  22    0xaf5b4  1      OPC=nop             
  nop                           #  23    0xaf5b5  1      OPC=nop             
  nop                           #  24    0xaf5b6  1      OPC=nop             
  nop                           #  25    0xaf5b7  1      OPC=nop             
  nop                           #  26    0xaf5b8  1      OPC=nop             
  nop                           #  27    0xaf5b9  1      OPC=nop             
  nop                           #  28    0xaf5ba  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  29    0xaf5bb  5      OPC=callq_label     
  movl %ebx, %ebx               #  30    0xaf5c0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  31    0xaf5c2  4      OPC=movl_r32_m32    
  nop                           #  32    0xaf5c6  1      OPC=nop             
  nop                           #  33    0xaf5c7  1      OPC=nop             
  nop                           #  34    0xaf5c8  1      OPC=nop             
  nop                           #  35    0xaf5c9  1      OPC=nop             
  nop                           #  36    0xaf5ca  1      OPC=nop             
  nop                           #  37    0xaf5cb  1      OPC=nop             
  nop                           #  38    0xaf5cc  1      OPC=nop             
  nop                           #  39    0xaf5cd  1      OPC=nop             
  nop                           #  40    0xaf5ce  1      OPC=nop             
  nop                           #  41    0xaf5cf  1      OPC=nop             
  nop                           #  42    0xaf5d0  1      OPC=nop             
  nop                           #  43    0xaf5d1  1      OPC=nop             
  nop                           #  44    0xaf5d2  1      OPC=nop             
  nop                           #  45    0xaf5d3  1      OPC=nop             
  nop                           #  46    0xaf5d4  1      OPC=nop             
  nop                           #  47    0xaf5d5  1      OPC=nop             
  nop                           #  48    0xaf5d6  1      OPC=nop             
  nop                           #  49    0xaf5d7  1      OPC=nop             
  nop                           #  50    0xaf5d8  1      OPC=nop             
  nop                           #  51    0xaf5d9  1      OPC=nop             
  nop                           #  52    0xaf5da  1      OPC=nop             
  nop                           #  53    0xaf5db  1      OPC=nop             
  nop                           #  54    0xaf5dc  1      OPC=nop             
  nop                           #  55    0xaf5dd  1      OPC=nop             
  nop                           #  56    0xaf5de  1      OPC=nop             
  nop                           #  57    0xaf5df  1      OPC=nop             
.L_af5e0:                       #        0xaf5e0  0      OPC=<label>         
  leal (%r12,%rax,1), %eax      #  58    0xaf5e0  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx          #  59    0xaf5e4  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12         #  60    0xaf5e9  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  61    0xaf5ee  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  62    0xaf5f1  3      OPC=addq_r64_r64    
  popq %r11                     #  63    0xaf5f4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  64    0xaf5f6  7      OPC=andl_r32_imm32  
  nop                           #  65    0xaf5fd  1      OPC=nop             
  nop                           #  66    0xaf5fe  1      OPC=nop             
  nop                           #  67    0xaf5ff  1      OPC=nop             
  nop                           #  68    0xaf600  1      OPC=nop             
  addq %r15, %r11               #  69    0xaf601  3      OPC=addq_r64_r64    
  jmpq %r11                     #  70    0xaf604  3      OPC=jmpq_r64        
                                                                             
.size _ZNSsixEj, .-_ZNSsixEj

