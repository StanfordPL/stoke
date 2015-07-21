  .text
  .globl _ZNKSt5ctypeIcE10do_toupperEPcPKc
  .type _ZNKSt5ctypeIcE10do_toupperEPcPKc, @function

#! file-offset 0x1245a0
#! rip-offset  0xe45a0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIcE10do_toupperEPcPKc:  #        0xe45a0  0      OPC=0     
  pushq %r13                         #  1     0xe45a0  2      OPC=1861  
  movl %edx, %r13d                   #  2     0xe45a2  3      OPC=1157  
  pushq %r12                         #  3     0xe45a5  2      OPC=1861  
  movl %edi, %r12d                   #  4     0xe45a7  3      OPC=1157  
  pushq %rbx                         #  5     0xe45aa  1      OPC=1861  
  movl %esi, %ebx                    #  6     0xe45ab  2      OPC=1157  
  cmpl %r13d, %ebx                   #  7     0xe45ad  3      OPC=472   
  jae .L_e4600                       #  8     0xe45b0  6      OPC=869   
  nop                                #  9     0xe45b6  1      OPC=1343  
  nop                                #  10    0xe45b7  1      OPC=1343  
  nop                                #  11    0xe45b8  1      OPC=1343  
  nop                                #  12    0xe45b9  1      OPC=1343  
  nop                                #  13    0xe45ba  1      OPC=1343  
  nop                                #  14    0xe45bb  1      OPC=1343  
  nop                                #  15    0xe45bc  1      OPC=1343  
  nop                                #  16    0xe45bd  1      OPC=1343  
  nop                                #  17    0xe45be  1      OPC=1343  
  nop                                #  18    0xe45bf  1      OPC=1343  
  nop                                #  19    0xe45c0  1      OPC=1343  
  nop                                #  20    0xe45c1  1      OPC=1343  
  nop                                #  21    0xe45c2  1      OPC=1343  
  nop                                #  22    0xe45c3  1      OPC=1343  
  nop                                #  23    0xe45c4  1      OPC=1343  
  nop                                #  24    0xe45c5  1      OPC=1343  
.L_e45c0:                            #        0xe45c6  0      OPC=0     
  movl %r12d, %r12d                  #  25    0xe45c6  3      OPC=1157  
  movl (%r15,%r12,1), %eax           #  26    0xe45c9  4      OPC=1156  
  movl %ebx, %ebx                    #  27    0xe45cd  2      OPC=1157  
  movsbl (%r15,%rbx,1), %esi         #  28    0xe45cf  5      OPC=1280  
  movl %r12d, %edi                   #  29    0xe45d4  3      OPC=1157  
  movl %eax, %eax                    #  30    0xe45d7  2      OPC=1157  
  movl 0x8(%r15,%rax,1), %eax        #  31    0xe45d9  5      OPC=1156  
  andl $0xffffffe0, %eax             #  32    0xe45de  6      OPC=131   
  nop                                #  33    0xe45e4  1      OPC=1343  
  nop                                #  34    0xe45e5  1      OPC=1343  
  nop                                #  35    0xe45e6  1      OPC=1343  
  addq %r15, %rax                    #  36    0xe45e7  3      OPC=72    
  callq %rax                         #  37    0xe45ea  2      OPC=258   
  movl %ebx, %ebx                    #  38    0xe45ec  2      OPC=1157  
  movb %al, (%r15,%rbx,1)            #  39    0xe45ee  4      OPC=1141  
  addl $0x1, %ebx                    #  40    0xe45f2  3      OPC=65    
  cmpl %ebx, %r13d                   #  41    0xe45f5  3      OPC=472   
  ja .L_e45c0                        #  42    0xe45f8  6      OPC=863   
  nop                                #  43    0xe45fe  1      OPC=1343  
  nop                                #  44    0xe45ff  1      OPC=1343  
  nop                                #  45    0xe4600  1      OPC=1343  
  nop                                #  46    0xe4601  1      OPC=1343  
  nop                                #  47    0xe4602  1      OPC=1343  
  nop                                #  48    0xe4603  1      OPC=1343  
  nop                                #  49    0xe4604  1      OPC=1343  
  nop                                #  50    0xe4605  1      OPC=1343  
  nop                                #  51    0xe4606  1      OPC=1343  
  nop                                #  52    0xe4607  1      OPC=1343  
  nop                                #  53    0xe4608  1      OPC=1343  
  nop                                #  54    0xe4609  1      OPC=1343  
  nop                                #  55    0xe460a  1      OPC=1343  
  nop                                #  56    0xe460b  1      OPC=1343  
  nop                                #  57    0xe460c  1      OPC=1343  
  nop                                #  58    0xe460d  1      OPC=1343  
  nop                                #  59    0xe460e  1      OPC=1343  
  nop                                #  60    0xe460f  1      OPC=1343  
  nop                                #  61    0xe4610  1      OPC=1343  
  nop                                #  62    0xe4611  1      OPC=1343  
.L_e4600:                            #        0xe4612  0      OPC=0     
  popq %rbx                          #  63    0xe4612  1      OPC=1694  
  popq %r12                          #  64    0xe4613  2      OPC=1694  
  movl %r13d, %eax                   #  65    0xe4615  3      OPC=1157  
  popq %r13                          #  66    0xe4618  2      OPC=1694  
  popq %r11                          #  67    0xe461a  2      OPC=1694  
  andl $0xffffffe0, %r11d            #  68    0xe461c  7      OPC=131   
  nop                                #  69    0xe4623  1      OPC=1343  
  nop                                #  70    0xe4624  1      OPC=1343  
  nop                                #  71    0xe4625  1      OPC=1343  
  nop                                #  72    0xe4626  1      OPC=1343  
  addq %r15, %r11                    #  73    0xe4627  3      OPC=72    
  jmpq %r11                          #  74    0xe462a  3      OPC=928   
  nop                                #  75    0xe462d  1      OPC=1343  
  nop                                #  76    0xe462e  1      OPC=1343  
  nop                                #  77    0xe462f  1      OPC=1343  
  nop                                #  78    0xe4630  1      OPC=1343  
  nop                                #  79    0xe4631  1      OPC=1343  
  nop                                #  80    0xe4632  1      OPC=1343  
  nop                                #  81    0xe4633  1      OPC=1343  
  nop                                #  82    0xe4634  1      OPC=1343  
  nop                                #  83    0xe4635  1      OPC=1343  
  nop                                #  84    0xe4636  1      OPC=1343  
  nop                                #  85    0xe4637  1      OPC=1343  
  nop                                #  86    0xe4638  1      OPC=1343  
                                                                        
.size _ZNKSt5ctypeIcE10do_toupperEPcPKc, .-_ZNKSt5ctypeIcE10do_toupperEPcPKc

