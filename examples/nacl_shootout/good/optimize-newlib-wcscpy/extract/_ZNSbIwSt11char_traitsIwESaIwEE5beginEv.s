  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5beginEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE5beginEv, @function

#! file-offset 0x11a0a0
#! rip-offset  0xda0a0
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5beginEv:                 #        0xda0a0  0      OPC=<label>         
  pushq %rbx                                              #  1     0xda0a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                         #  2     0xda0a1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                         #  3     0xda0a3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  4     0xda0a5  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  5     0xda0a9  3      OPC=leal_r32_m16    
  movl %edx, %edx                                         #  6     0xda0ac  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %esi                             #  7     0xda0ae  5      OPC=movl_r32_m32    
  testl %esi, %esi                                        #  8     0xda0b3  2      OPC=testl_r32_r32   
  js .L_da0e0                                             #  9     0xda0b5  2      OPC=js_label        
  movl %ebx, %edi                                         #  10    0xda0b7  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                          #  11    0xda0b9  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  12    0xda0bb  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  13    0xda0c0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  14    0xda0c2  4      OPC=movl_r32_m32    
  nop                                                     #  15    0xda0c6  1      OPC=nop             
  nop                                                     #  16    0xda0c7  1      OPC=nop             
  nop                                                     #  17    0xda0c8  1      OPC=nop             
  nop                                                     #  18    0xda0c9  1      OPC=nop             
  nop                                                     #  19    0xda0ca  1      OPC=nop             
  nop                                                     #  20    0xda0cb  1      OPC=nop             
  nop                                                     #  21    0xda0cc  1      OPC=nop             
  nop                                                     #  22    0xda0cd  1      OPC=nop             
  nop                                                     #  23    0xda0ce  1      OPC=nop             
  nop                                                     #  24    0xda0cf  1      OPC=nop             
  nop                                                     #  25    0xda0d0  1      OPC=nop             
  nop                                                     #  26    0xda0d1  1      OPC=nop             
  nop                                                     #  27    0xda0d2  1      OPC=nop             
  nop                                                     #  28    0xda0d3  1      OPC=nop             
  nop                                                     #  29    0xda0d4  1      OPC=nop             
  nop                                                     #  30    0xda0d5  1      OPC=nop             
  nop                                                     #  31    0xda0d6  1      OPC=nop             
  nop                                                     #  32    0xda0d7  1      OPC=nop             
  nop                                                     #  33    0xda0d8  1      OPC=nop             
  nop                                                     #  34    0xda0d9  1      OPC=nop             
  nop                                                     #  35    0xda0da  1      OPC=nop             
  nop                                                     #  36    0xda0db  1      OPC=nop             
  nop                                                     #  37    0xda0dc  1      OPC=nop             
  nop                                                     #  38    0xda0dd  1      OPC=nop             
  nop                                                     #  39    0xda0de  1      OPC=nop             
  nop                                                     #  40    0xda0df  1      OPC=nop             
.L_da0e0:                                                 #        0xda0e0  0      OPC=<label>         
  popq %rbx                                               #  41    0xda0e0  1      OPC=popq_r64_1      
  popq %r11                                               #  42    0xda0e1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  43    0xda0e3  7      OPC=andl_r32_imm32  
  nop                                                     #  44    0xda0ea  1      OPC=nop             
  nop                                                     #  45    0xda0eb  1      OPC=nop             
  nop                                                     #  46    0xda0ec  1      OPC=nop             
  nop                                                     #  47    0xda0ed  1      OPC=nop             
  addq %r15, %r11                                         #  48    0xda0ee  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  49    0xda0f1  3      OPC=jmpq_r64        
  nop                                                     #  50    0xda0f4  1      OPC=nop             
  nop                                                     #  51    0xda0f5  1      OPC=nop             
  nop                                                     #  52    0xda0f6  1      OPC=nop             
  nop                                                     #  53    0xda0f7  1      OPC=nop             
  nop                                                     #  54    0xda0f8  1      OPC=nop             
  nop                                                     #  55    0xda0f9  1      OPC=nop             
  nop                                                     #  56    0xda0fa  1      OPC=nop             
  nop                                                     #  57    0xda0fb  1      OPC=nop             
  nop                                                     #  58    0xda0fc  1      OPC=nop             
  nop                                                     #  59    0xda0fd  1      OPC=nop             
  nop                                                     #  60    0xda0fe  1      OPC=nop             
  nop                                                     #  61    0xda0ff  1      OPC=nop             
  nop                                                     #  62    0xda100  1      OPC=nop             
  nop                                                     #  63    0xda101  1      OPC=nop             
  nop                                                     #  64    0xda102  1      OPC=nop             
  nop                                                     #  65    0xda103  1      OPC=nop             
  nop                                                     #  66    0xda104  1      OPC=nop             
  nop                                                     #  67    0xda105  1      OPC=nop             
  nop                                                     #  68    0xda106  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE5beginEv, .-_ZNSbIwSt11char_traitsIwESaIwEE5beginEv

