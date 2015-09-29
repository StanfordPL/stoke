  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12eb80
#! rip-offset  0xeeb80
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:       #        0xeeb80  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xeeb80  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xeeb82  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xeeb83  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xeeb85  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xeeb87  4      OPC=movl_r32_m32   
  leal 0x4(%rbx), %edi                                                        #  6     0xeeb8b  3      OPC=leal_r32_m16   
  orl $0x10, %edx                                                             #  7     0xeeb8e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xeeb91  1      OPC=nop            
  nop                                                                         #  9     0xeeb92  1      OPC=nop            
  nop                                                                         #  10    0xeeb93  1      OPC=nop            
  nop                                                                         #  11    0xeeb94  1      OPC=nop            
  nop                                                                         #  12    0xeeb95  1      OPC=nop            
  nop                                                                         #  13    0xeeb96  1      OPC=nop            
  nop                                                                         #  14    0xeeb97  1      OPC=nop            
  nop                                                                         #  15    0xeeb98  1      OPC=nop            
  nop                                                                         #  16    0xeeb99  1      OPC=nop            
  nop                                                                         #  17    0xeeb9a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  18    0xeeb9b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xeeba0  2      OPC=testl_r32_r32  
  je .L_eebc0                                                                 #  20    0xeeba2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xeeba4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xeeba6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xeebaa  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xeebac  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xeebaf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xeebb1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xeebb5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xeebb7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  29    0xeebb8  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xeebbd  1      OPC=nop            
  nop                                                                         #  31    0xeebbe  1      OPC=nop            
  nop                                                                         #  32    0xeebbf  1      OPC=nop            
.L_eebc0:                                                                     #        0xeebc0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xeebc0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xeebc2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xeebc6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xeebc9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xeebcb  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xeebcf  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xeebd1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xeebd3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xeebd8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xeebd9  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xeebdc  1      OPC=nop            
  nop                                                                         #  44    0xeebdd  1      OPC=nop            
  nop                                                                         #  45    0xeebde  1      OPC=nop            
  nop                                                                         #  46    0xeebdf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  47    0xeebe0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xeebe5  1      OPC=nop            
  nop                                                                         #  49    0xeebe6  1      OPC=nop            
  nop                                                                         #  50    0xeebe7  1      OPC=nop            
  nop                                                                         #  51    0xeebe8  1      OPC=nop            
  nop                                                                         #  52    0xeebe9  1      OPC=nop            
  nop                                                                         #  53    0xeebea  1      OPC=nop            
  nop                                                                         #  54    0xeebeb  1      OPC=nop            
  nop                                                                         #  55    0xeebec  1      OPC=nop            
  nop                                                                         #  56    0xeebed  1      OPC=nop            
  nop                                                                         #  57    0xeebee  1      OPC=nop            
  nop                                                                         #  58    0xeebef  1      OPC=nop            
  nop                                                                         #  59    0xeebf0  1      OPC=nop            
  nop                                                                         #  60    0xeebf1  1      OPC=nop            
  nop                                                                         #  61    0xeebf2  1      OPC=nop            
  nop                                                                         #  62    0xeebf3  1      OPC=nop            
  nop                                                                         #  63    0xeebf4  1      OPC=nop            
  nop                                                                         #  64    0xeebf5  1      OPC=nop            
  nop                                                                         #  65    0xeebf6  1      OPC=nop            
  nop                                                                         #  66    0xeebf7  1      OPC=nop            
  nop                                                                         #  67    0xeebf8  1      OPC=nop            
  nop                                                                         #  68    0xeebf9  1      OPC=nop            
  nop                                                                         #  69    0xeebfa  1      OPC=nop            
  nop                                                                         #  70    0xeebfb  1      OPC=nop            
  nop                                                                         #  71    0xeebfc  1      OPC=nop            
  nop                                                                         #  72    0xeebfd  1      OPC=nop            
  nop                                                                         #  73    0xeebfe  1      OPC=nop            
  nop                                                                         #  74    0xeebff  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

