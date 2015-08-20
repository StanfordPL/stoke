  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12e4e0
#! rip-offset  0xee4e0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:        #        0xee4e0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xee4e0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xee4e1  2      OPC=movl_r32_r32   
  orl $0x10, %edx                                                             #  3     0xee4e3  3      OPC=orl_r32_imm8   
  leal 0x4(%rbx), %edi                                                        #  4     0xee4e6  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xee4e9  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xee4eb  1      OPC=nop            
  nop                                                                         #  7     0xee4ec  1      OPC=nop            
  nop                                                                         #  8     0xee4ed  1      OPC=nop            
  nop                                                                         #  9     0xee4ee  1      OPC=nop            
  nop                                                                         #  10    0xee4ef  1      OPC=nop            
  nop                                                                         #  11    0xee4f0  1      OPC=nop            
  nop                                                                         #  12    0xee4f1  1      OPC=nop            
  nop                                                                         #  13    0xee4f2  1      OPC=nop            
  nop                                                                         #  14    0xee4f3  1      OPC=nop            
  nop                                                                         #  15    0xee4f4  1      OPC=nop            
  nop                                                                         #  16    0xee4f5  1      OPC=nop            
  nop                                                                         #  17    0xee4f6  1      OPC=nop            
  nop                                                                         #  18    0xee4f7  1      OPC=nop            
  nop                                                                         #  19    0xee4f8  1      OPC=nop            
  nop                                                                         #  20    0xee4f9  1      OPC=nop            
  nop                                                                         #  21    0xee4fa  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  22    0xee4fb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xee500  2      OPC=testl_r32_r32  
  je .L_ee520                                                                 #  24    0xee502  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xee504  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xee506  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xee50a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xee50c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xee50f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xee511  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xee515  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xee517  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  33    0xee518  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xee51d  1      OPC=nop            
  nop                                                                         #  35    0xee51e  1      OPC=nop            
  nop                                                                         #  36    0xee51f  1      OPC=nop            
.L_ee520:                                                                     #        0xee520  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xee520  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xee522  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xee526  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xee529  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xee52b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xee52f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xee531  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xee533  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xee538  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xee539  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xee53c  1      OPC=nop            
  nop                                                                         #  48    0xee53d  1      OPC=nop            
  nop                                                                         #  49    0xee53e  1      OPC=nop            
  nop                                                                         #  50    0xee53f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  51    0xee540  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xee545  1      OPC=nop            
  nop                                                                         #  53    0xee546  1      OPC=nop            
  nop                                                                         #  54    0xee547  1      OPC=nop            
  nop                                                                         #  55    0xee548  1      OPC=nop            
  nop                                                                         #  56    0xee549  1      OPC=nop            
  nop                                                                         #  57    0xee54a  1      OPC=nop            
  nop                                                                         #  58    0xee54b  1      OPC=nop            
  nop                                                                         #  59    0xee54c  1      OPC=nop            
  nop                                                                         #  60    0xee54d  1      OPC=nop            
  nop                                                                         #  61    0xee54e  1      OPC=nop            
  nop                                                                         #  62    0xee54f  1      OPC=nop            
  nop                                                                         #  63    0xee550  1      OPC=nop            
  nop                                                                         #  64    0xee551  1      OPC=nop            
  nop                                                                         #  65    0xee552  1      OPC=nop            
  nop                                                                         #  66    0xee553  1      OPC=nop            
  nop                                                                         #  67    0xee554  1      OPC=nop            
  nop                                                                         #  68    0xee555  1      OPC=nop            
  nop                                                                         #  69    0xee556  1      OPC=nop            
  nop                                                                         #  70    0xee557  1      OPC=nop            
  nop                                                                         #  71    0xee558  1      OPC=nop            
  nop                                                                         #  72    0xee559  1      OPC=nop            
  nop                                                                         #  73    0xee55a  1      OPC=nop            
  nop                                                                         #  74    0xee55b  1      OPC=nop            
  nop                                                                         #  75    0xee55c  1      OPC=nop            
  nop                                                                         #  76    0xee55d  1      OPC=nop            
  nop                                                                         #  77    0xee55e  1      OPC=nop            
  nop                                                                         #  78    0xee55f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

