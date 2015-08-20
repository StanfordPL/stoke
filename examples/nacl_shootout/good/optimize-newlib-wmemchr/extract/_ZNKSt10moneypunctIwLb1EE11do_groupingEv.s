  .text
  .globl _ZNKSt10moneypunctIwLb1EE11do_groupingEv
  .type _ZNKSt10moneypunctIwLb1EE11do_groupingEv, @function

#! file-offset 0xf7080
#! rip-offset  0xb7080
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11do_groupingEv:  #        0xb7080  0      OPC=<label>         
  pushq %rbx                                #  1     0xb7080  1      OPC=pushq_r64_1     
  movl %esi, %esi                           #  2     0xb7081  2      OPC=movl_r32_r32    
  movl %edi, %ebx                           #  3     0xb7083  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  4     0xb7085  2      OPC=movl_r32_r32    
  subl $0x10, %esp                          #  5     0xb7087  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                           #  6     0xb708a  3      OPC=addq_r64_r64    
  movl %esi, %esi                           #  7     0xb708d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax               #  8     0xb708f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                      #  9     0xb7094  4      OPC=leal_r32_m16    
  movl %eax, %eax                           #  10    0xb7098  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi               #  11    0xb709a  5      OPC=movl_r32_m32    
  nop                                       #  12    0xb709f  1      OPC=nop             
  nop                                       #  13    0xb70a0  1      OPC=nop             
  nop                                       #  14    0xb70a1  1      OPC=nop             
  nop                                       #  15    0xb70a2  1      OPC=nop             
  nop                                       #  16    0xb70a3  1      OPC=nop             
  nop                                       #  17    0xb70a4  1      OPC=nop             
  nop                                       #  18    0xb70a5  1      OPC=nop             
  nop                                       #  19    0xb70a6  1      OPC=nop             
  nop                                       #  20    0xb70a7  1      OPC=nop             
  nop                                       #  21    0xb70a8  1      OPC=nop             
  nop                                       #  22    0xb70a9  1      OPC=nop             
  nop                                       #  23    0xb70aa  1      OPC=nop             
  nop                                       #  24    0xb70ab  1      OPC=nop             
  nop                                       #  25    0xb70ac  1      OPC=nop             
  nop                                       #  26    0xb70ad  1      OPC=nop             
  nop                                       #  27    0xb70ae  1      OPC=nop             
  nop                                       #  28    0xb70af  1      OPC=nop             
  nop                                       #  29    0xb70b0  1      OPC=nop             
  nop                                       #  30    0xb70b1  1      OPC=nop             
  nop                                       #  31    0xb70b2  1      OPC=nop             
  nop                                       #  32    0xb70b3  1      OPC=nop             
  nop                                       #  33    0xb70b4  1      OPC=nop             
  nop                                       #  34    0xb70b5  1      OPC=nop             
  nop                                       #  35    0xb70b6  1      OPC=nop             
  nop                                       #  36    0xb70b7  1      OPC=nop             
  nop                                       #  37    0xb70b8  1      OPC=nop             
  nop                                       #  38    0xb70b9  1      OPC=nop             
  nop                                       #  39    0xb70ba  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                 #  40    0xb70bb  5      OPC=callq_label     
  movl %ebx, %eax                           #  41    0xb70c0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                          #  42    0xb70c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                           #  43    0xb70c5  3      OPC=addq_r64_r64    
  popq %rbx                                 #  44    0xb70c8  1      OPC=popq_r64_1      
  popq %r11                                 #  45    0xb70c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  46    0xb70cb  7      OPC=andl_r32_imm32  
  nop                                       #  47    0xb70d2  1      OPC=nop             
  nop                                       #  48    0xb70d3  1      OPC=nop             
  nop                                       #  49    0xb70d4  1      OPC=nop             
  nop                                       #  50    0xb70d5  1      OPC=nop             
  addq %r15, %r11                           #  51    0xb70d6  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  52    0xb70d9  3      OPC=jmpq_r64        
  nop                                       #  53    0xb70dc  1      OPC=nop             
  nop                                       #  54    0xb70dd  1      OPC=nop             
  nop                                       #  55    0xb70de  1      OPC=nop             
  nop                                       #  56    0xb70df  1      OPC=nop             
  nop                                       #  57    0xb70e0  1      OPC=nop             
  nop                                       #  58    0xb70e1  1      OPC=nop             
  nop                                       #  59    0xb70e2  1      OPC=nop             
  nop                                       #  60    0xb70e3  1      OPC=nop             
  nop                                       #  61    0xb70e4  1      OPC=nop             
  nop                                       #  62    0xb70e5  1      OPC=nop             
  nop                                       #  63    0xb70e6  1      OPC=nop             
  movl %eax, %edi                           #  64    0xb70e7  2      OPC=movl_r32_r32    
  nop                                       #  65    0xb70e9  1      OPC=nop             
  nop                                       #  66    0xb70ea  1      OPC=nop             
  nop                                       #  67    0xb70eb  1      OPC=nop             
  nop                                       #  68    0xb70ec  1      OPC=nop             
  nop                                       #  69    0xb70ed  1      OPC=nop             
  nop                                       #  70    0xb70ee  1      OPC=nop             
  nop                                       #  71    0xb70ef  1      OPC=nop             
  nop                                       #  72    0xb70f0  1      OPC=nop             
  nop                                       #  73    0xb70f1  1      OPC=nop             
  nop                                       #  74    0xb70f2  1      OPC=nop             
  nop                                       #  75    0xb70f3  1      OPC=nop             
  nop                                       #  76    0xb70f4  1      OPC=nop             
  nop                                       #  77    0xb70f5  1      OPC=nop             
  nop                                       #  78    0xb70f6  1      OPC=nop             
  nop                                       #  79    0xb70f7  1      OPC=nop             
  nop                                       #  80    0xb70f8  1      OPC=nop             
  nop                                       #  81    0xb70f9  1      OPC=nop             
  nop                                       #  82    0xb70fa  1      OPC=nop             
  nop                                       #  83    0xb70fb  1      OPC=nop             
  nop                                       #  84    0xb70fc  1      OPC=nop             
  nop                                       #  85    0xb70fd  1      OPC=nop             
  nop                                       #  86    0xb70fe  1      OPC=nop             
  nop                                       #  87    0xb70ff  1      OPC=nop             
  nop                                       #  88    0xb7100  1      OPC=nop             
  nop                                       #  89    0xb7101  1      OPC=nop             
  callq ._Unwind_Resume                     #  90    0xb7102  5      OPC=callq_label     
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11do_groupingEv, .-_ZNKSt10moneypunctIwLb1EE11do_groupingEv

