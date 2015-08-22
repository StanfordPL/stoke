  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tED1Ev
  .type _ZNSt7codecvtIwc10_mbstate_tED1Ev, @function

#! file-offset 0x1241c0
#! rip-offset  0xe41c0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tED1Ev:                   #        0xe41c0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xe41c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xe41c1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xe41c3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xe41c6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xe41c9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xe41cc  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)                     #  7     0xe41ce  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xe41d6  1      OPC=nop             
  nop                                                 #  9     0xe41d7  1      OPC=nop             
  nop                                                 #  10    0xe41d8  1      OPC=nop             
  nop                                                 #  11    0xe41d9  1      OPC=nop             
  nop                                                 #  12    0xe41da  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe41db  5      OPC=callq_label     
  movl %ebx, %ebx                                     #  14    0xe41e0  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                     #  15    0xe41e2  8      OPC=movl_m32_imm32  
  movl %ebx, %edi                                     #  16    0xe41ea  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  17    0xe41ec  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  18    0xe41ef  3      OPC=addq_r64_r64    
  popq %rbx                                           #  19    0xe41f2  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe41f3  5      OPC=jmpq_label_1    
  nop                                                 #  21    0xe41f8  1      OPC=nop             
  nop                                                 #  22    0xe41f9  1      OPC=nop             
  nop                                                 #  23    0xe41fa  1      OPC=nop             
  nop                                                 #  24    0xe41fb  1      OPC=nop             
  nop                                                 #  25    0xe41fc  1      OPC=nop             
  nop                                                 #  26    0xe41fd  1      OPC=nop             
  nop                                                 #  27    0xe41fe  1      OPC=nop             
  nop                                                 #  28    0xe41ff  1      OPC=nop             
  movl %ebx, %edi                                     #  29    0xe4200  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                     #  30    0xe4202  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                     #  31    0xe4204  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                                #  32    0xe420c  4      OPC=movl_m32_r32    
  nop                                                 #  33    0xe4210  1      OPC=nop             
  nop                                                 #  34    0xe4211  1      OPC=nop             
  nop                                                 #  35    0xe4212  1      OPC=nop             
  nop                                                 #  36    0xe4213  1      OPC=nop             
  nop                                                 #  37    0xe4214  1      OPC=nop             
  nop                                                 #  38    0xe4215  1      OPC=nop             
  nop                                                 #  39    0xe4216  1      OPC=nop             
  nop                                                 #  40    0xe4217  1      OPC=nop             
  nop                                                 #  41    0xe4218  1      OPC=nop             
  nop                                                 #  42    0xe4219  1      OPC=nop             
  nop                                                 #  43    0xe421a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe421b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  45    0xe4220  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  46    0xe4224  2      OPC=movl_r32_r32    
  nop                                                 #  47    0xe4226  1      OPC=nop             
  nop                                                 #  48    0xe4227  1      OPC=nop             
  nop                                                 #  49    0xe4228  1      OPC=nop             
  nop                                                 #  50    0xe4229  1      OPC=nop             
  nop                                                 #  51    0xe422a  1      OPC=nop             
  nop                                                 #  52    0xe422b  1      OPC=nop             
  nop                                                 #  53    0xe422c  1      OPC=nop             
  nop                                                 #  54    0xe422d  1      OPC=nop             
  nop                                                 #  55    0xe422e  1      OPC=nop             
  nop                                                 #  56    0xe422f  1      OPC=nop             
  nop                                                 #  57    0xe4230  1      OPC=nop             
  nop                                                 #  58    0xe4231  1      OPC=nop             
  nop                                                 #  59    0xe4232  1      OPC=nop             
  nop                                                 #  60    0xe4233  1      OPC=nop             
  nop                                                 #  61    0xe4234  1      OPC=nop             
  nop                                                 #  62    0xe4235  1      OPC=nop             
  nop                                                 #  63    0xe4236  1      OPC=nop             
  nop                                                 #  64    0xe4237  1      OPC=nop             
  nop                                                 #  65    0xe4238  1      OPC=nop             
  nop                                                 #  66    0xe4239  1      OPC=nop             
  nop                                                 #  67    0xe423a  1      OPC=nop             
  callq ._Unwind_Resume                               #  68    0xe423b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7codecvtIwc10_mbstate_tED1Ev, .-_ZNSt7codecvtIwc10_mbstate_tED1Ev

