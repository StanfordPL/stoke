  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12ea80
#! rip-offset  0xeea80
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:        #        0xeea80  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xeea80  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xeea82  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xeea83  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xeea85  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xeea87  4      OPC=movl_r32_m32   
  leal 0xc(%rbx), %edi                                                        #  6     0xeea8b  3      OPC=leal_r32_m16   
  nop                                                                         #  7     0xeea8e  1      OPC=nop            
  nop                                                                         #  8     0xeea8f  1      OPC=nop            
  nop                                                                         #  9     0xeea90  1      OPC=nop            
  nop                                                                         #  10    0xeea91  1      OPC=nop            
  nop                                                                         #  11    0xeea92  1      OPC=nop            
  nop                                                                         #  12    0xeea93  1      OPC=nop            
  nop                                                                         #  13    0xeea94  1      OPC=nop            
  nop                                                                         #  14    0xeea95  1      OPC=nop            
  nop                                                                         #  15    0xeea96  1      OPC=nop            
  nop                                                                         #  16    0xeea97  1      OPC=nop            
  nop                                                                         #  17    0xeea98  1      OPC=nop            
  nop                                                                         #  18    0xeea99  1      OPC=nop            
  nop                                                                         #  19    0xeea9a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  20    0xeea9b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  21    0xeeaa0  2      OPC=testl_r32_r32  
  je .L_eeac0                                                                 #  22    0xeeaa2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  23    0xeeaa4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  24    0xeeaa6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  25    0xeeaaa  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  26    0xeeaac  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  27    0xeeaaf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  28    0xeeab1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  29    0xeeab5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  30    0xeeab7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  31    0xeeab8  5      OPC=jmpq_label_1   
  nop                                                                         #  32    0xeeabd  1      OPC=nop            
  nop                                                                         #  33    0xeeabe  1      OPC=nop            
  nop                                                                         #  34    0xeeabf  1      OPC=nop            
.L_eeac0:                                                                     #        0xeeac0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  35    0xeeac0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  36    0xeeac2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  37    0xeeac6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  38    0xeeac9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  39    0xeeacb  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  40    0xeeacf  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  41    0xeead1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xeead3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  43    0xeead8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  44    0xeead9  3      OPC=orl_r32_imm8   
  nop                                                                         #  45    0xeeadc  1      OPC=nop            
  nop                                                                         #  46    0xeeadd  1      OPC=nop            
  nop                                                                         #  47    0xeeade  1      OPC=nop            
  nop                                                                         #  48    0xeeadf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  49    0xeeae0  5      OPC=jmpq_label_1   
  nop                                                                         #  50    0xeeae5  1      OPC=nop            
  nop                                                                         #  51    0xeeae6  1      OPC=nop            
  nop                                                                         #  52    0xeeae7  1      OPC=nop            
  nop                                                                         #  53    0xeeae8  1      OPC=nop            
  nop                                                                         #  54    0xeeae9  1      OPC=nop            
  nop                                                                         #  55    0xeeaea  1      OPC=nop            
  nop                                                                         #  56    0xeeaeb  1      OPC=nop            
  nop                                                                         #  57    0xeeaec  1      OPC=nop            
  nop                                                                         #  58    0xeeaed  1      OPC=nop            
  nop                                                                         #  59    0xeeaee  1      OPC=nop            
  nop                                                                         #  60    0xeeaef  1      OPC=nop            
  nop                                                                         #  61    0xeeaf0  1      OPC=nop            
  nop                                                                         #  62    0xeeaf1  1      OPC=nop            
  nop                                                                         #  63    0xeeaf2  1      OPC=nop            
  nop                                                                         #  64    0xeeaf3  1      OPC=nop            
  nop                                                                         #  65    0xeeaf4  1      OPC=nop            
  nop                                                                         #  66    0xeeaf5  1      OPC=nop            
  nop                                                                         #  67    0xeeaf6  1      OPC=nop            
  nop                                                                         #  68    0xeeaf7  1      OPC=nop            
  nop                                                                         #  69    0xeeaf8  1      OPC=nop            
  nop                                                                         #  70    0xeeaf9  1      OPC=nop            
  nop                                                                         #  71    0xeeafa  1      OPC=nop            
  nop                                                                         #  72    0xeeafb  1      OPC=nop            
  nop                                                                         #  73    0xeeafc  1      OPC=nop            
  nop                                                                         #  74    0xeeafd  1      OPC=nop            
  nop                                                                         #  75    0xeeafe  1      OPC=nop            
  nop                                                                         #  76    0xeeaff  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

