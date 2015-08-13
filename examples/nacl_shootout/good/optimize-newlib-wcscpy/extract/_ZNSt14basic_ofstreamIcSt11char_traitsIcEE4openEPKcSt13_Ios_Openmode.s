  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12e1e0
#! rip-offset  0xee1e0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:        #        0xee1e0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xee1e0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xee1e1  2      OPC=movl_r32_r32   
  orl $0x10, %edx                                                             #  3     0xee1e3  3      OPC=orl_r32_imm8   
  leal 0x4(%rbx), %edi                                                        #  4     0xee1e6  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xee1e9  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xee1eb  1      OPC=nop            
  nop                                                                         #  7     0xee1ec  1      OPC=nop            
  nop                                                                         #  8     0xee1ed  1      OPC=nop            
  nop                                                                         #  9     0xee1ee  1      OPC=nop            
  nop                                                                         #  10    0xee1ef  1      OPC=nop            
  nop                                                                         #  11    0xee1f0  1      OPC=nop            
  nop                                                                         #  12    0xee1f1  1      OPC=nop            
  nop                                                                         #  13    0xee1f2  1      OPC=nop            
  nop                                                                         #  14    0xee1f3  1      OPC=nop            
  nop                                                                         #  15    0xee1f4  1      OPC=nop            
  nop                                                                         #  16    0xee1f5  1      OPC=nop            
  nop                                                                         #  17    0xee1f6  1      OPC=nop            
  nop                                                                         #  18    0xee1f7  1      OPC=nop            
  nop                                                                         #  19    0xee1f8  1      OPC=nop            
  nop                                                                         #  20    0xee1f9  1      OPC=nop            
  nop                                                                         #  21    0xee1fa  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  22    0xee1fb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xee200  2      OPC=testl_r32_r32  
  je .L_ee220                                                                 #  24    0xee202  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xee204  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xee206  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xee20a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xee20c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xee20f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xee211  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xee215  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xee217  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  33    0xee218  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xee21d  1      OPC=nop            
  nop                                                                         #  35    0xee21e  1      OPC=nop            
  nop                                                                         #  36    0xee21f  1      OPC=nop            
.L_ee220:                                                                     #        0xee220  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xee220  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xee222  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xee226  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xee229  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xee22b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xee22f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xee231  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xee233  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xee238  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xee239  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xee23c  1      OPC=nop            
  nop                                                                         #  48    0xee23d  1      OPC=nop            
  nop                                                                         #  49    0xee23e  1      OPC=nop            
  nop                                                                         #  50    0xee23f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  51    0xee240  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xee245  1      OPC=nop            
  nop                                                                         #  53    0xee246  1      OPC=nop            
  nop                                                                         #  54    0xee247  1      OPC=nop            
  nop                                                                         #  55    0xee248  1      OPC=nop            
  nop                                                                         #  56    0xee249  1      OPC=nop            
  nop                                                                         #  57    0xee24a  1      OPC=nop            
  nop                                                                         #  58    0xee24b  1      OPC=nop            
  nop                                                                         #  59    0xee24c  1      OPC=nop            
  nop                                                                         #  60    0xee24d  1      OPC=nop            
  nop                                                                         #  61    0xee24e  1      OPC=nop            
  nop                                                                         #  62    0xee24f  1      OPC=nop            
  nop                                                                         #  63    0xee250  1      OPC=nop            
  nop                                                                         #  64    0xee251  1      OPC=nop            
  nop                                                                         #  65    0xee252  1      OPC=nop            
  nop                                                                         #  66    0xee253  1      OPC=nop            
  nop                                                                         #  67    0xee254  1      OPC=nop            
  nop                                                                         #  68    0xee255  1      OPC=nop            
  nop                                                                         #  69    0xee256  1      OPC=nop            
  nop                                                                         #  70    0xee257  1      OPC=nop            
  nop                                                                         #  71    0xee258  1      OPC=nop            
  nop                                                                         #  72    0xee259  1      OPC=nop            
  nop                                                                         #  73    0xee25a  1      OPC=nop            
  nop                                                                         #  74    0xee25b  1      OPC=nop            
  nop                                                                         #  75    0xee25c  1      OPC=nop            
  nop                                                                         #  76    0xee25d  1      OPC=nop            
  nop                                                                         #  77    0xee25e  1      OPC=nop            
  nop                                                                         #  78    0xee25f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

