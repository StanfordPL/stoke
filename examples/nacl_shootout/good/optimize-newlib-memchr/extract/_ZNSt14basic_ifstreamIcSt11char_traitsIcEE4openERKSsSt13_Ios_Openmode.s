  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12ec80
#! rip-offset  0xeec80
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:       #        0xeec80  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xeec80  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xeec82  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xeec83  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xeec85  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xeec87  4      OPC=movl_r32_m32   
  leal 0x8(%rbx), %edi                                                        #  6     0xeec8b  3      OPC=leal_r32_m16   
  orl $0x8, %edx                                                              #  7     0xeec8e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xeec91  1      OPC=nop            
  nop                                                                         #  9     0xeec92  1      OPC=nop            
  nop                                                                         #  10    0xeec93  1      OPC=nop            
  nop                                                                         #  11    0xeec94  1      OPC=nop            
  nop                                                                         #  12    0xeec95  1      OPC=nop            
  nop                                                                         #  13    0xeec96  1      OPC=nop            
  nop                                                                         #  14    0xeec97  1      OPC=nop            
  nop                                                                         #  15    0xeec98  1      OPC=nop            
  nop                                                                         #  16    0xeec99  1      OPC=nop            
  nop                                                                         #  17    0xeec9a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  18    0xeec9b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xeeca0  2      OPC=testl_r32_r32  
  je .L_eecc0                                                                 #  20    0xeeca2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xeeca4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xeeca6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xeecaa  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xeecac  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xeecaf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xeecb1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xeecb5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xeecb7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  29    0xeecb8  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xeecbd  1      OPC=nop            
  nop                                                                         #  31    0xeecbe  1      OPC=nop            
  nop                                                                         #  32    0xeecbf  1      OPC=nop            
.L_eecc0:                                                                     #        0xeecc0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xeecc0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xeecc2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xeecc6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xeecc9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xeeccb  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xeeccf  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xeecd1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xeecd3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xeecd8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xeecd9  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xeecdc  1      OPC=nop            
  nop                                                                         #  44    0xeecdd  1      OPC=nop            
  nop                                                                         #  45    0xeecde  1      OPC=nop            
  nop                                                                         #  46    0xeecdf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  47    0xeece0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xeece5  1      OPC=nop            
  nop                                                                         #  49    0xeece6  1      OPC=nop            
  nop                                                                         #  50    0xeece7  1      OPC=nop            
  nop                                                                         #  51    0xeece8  1      OPC=nop            
  nop                                                                         #  52    0xeece9  1      OPC=nop            
  nop                                                                         #  53    0xeecea  1      OPC=nop            
  nop                                                                         #  54    0xeeceb  1      OPC=nop            
  nop                                                                         #  55    0xeecec  1      OPC=nop            
  nop                                                                         #  56    0xeeced  1      OPC=nop            
  nop                                                                         #  57    0xeecee  1      OPC=nop            
  nop                                                                         #  58    0xeecef  1      OPC=nop            
  nop                                                                         #  59    0xeecf0  1      OPC=nop            
  nop                                                                         #  60    0xeecf1  1      OPC=nop            
  nop                                                                         #  61    0xeecf2  1      OPC=nop            
  nop                                                                         #  62    0xeecf3  1      OPC=nop            
  nop                                                                         #  63    0xeecf4  1      OPC=nop            
  nop                                                                         #  64    0xeecf5  1      OPC=nop            
  nop                                                                         #  65    0xeecf6  1      OPC=nop            
  nop                                                                         #  66    0xeecf7  1      OPC=nop            
  nop                                                                         #  67    0xeecf8  1      OPC=nop            
  nop                                                                         #  68    0xeecf9  1      OPC=nop            
  nop                                                                         #  69    0xeecfa  1      OPC=nop            
  nop                                                                         #  70    0xeecfb  1      OPC=nop            
  nop                                                                         #  71    0xeecfc  1      OPC=nop            
  nop                                                                         #  72    0xeecfd  1      OPC=nop            
  nop                                                                         #  73    0xeecfe  1      OPC=nop            
  nop                                                                         #  74    0xeecff  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

