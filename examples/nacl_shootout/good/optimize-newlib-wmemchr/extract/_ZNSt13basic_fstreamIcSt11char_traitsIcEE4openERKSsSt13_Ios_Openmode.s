  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12e360
#! rip-offset  0xee360
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:        #        0xee360  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xee360  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xee362  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xee363  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xee365  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xee367  4      OPC=movl_r32_m32   
  leal 0xc(%rbx), %edi                                                        #  6     0xee36b  3      OPC=leal_r32_m16   
  nop                                                                         #  7     0xee36e  1      OPC=nop            
  nop                                                                         #  8     0xee36f  1      OPC=nop            
  nop                                                                         #  9     0xee370  1      OPC=nop            
  nop                                                                         #  10    0xee371  1      OPC=nop            
  nop                                                                         #  11    0xee372  1      OPC=nop            
  nop                                                                         #  12    0xee373  1      OPC=nop            
  nop                                                                         #  13    0xee374  1      OPC=nop            
  nop                                                                         #  14    0xee375  1      OPC=nop            
  nop                                                                         #  15    0xee376  1      OPC=nop            
  nop                                                                         #  16    0xee377  1      OPC=nop            
  nop                                                                         #  17    0xee378  1      OPC=nop            
  nop                                                                         #  18    0xee379  1      OPC=nop            
  nop                                                                         #  19    0xee37a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  20    0xee37b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  21    0xee380  2      OPC=testl_r32_r32  
  je .L_ee3a0                                                                 #  22    0xee382  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  23    0xee384  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  24    0xee386  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  25    0xee38a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  26    0xee38c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  27    0xee38f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  28    0xee391  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  29    0xee395  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  30    0xee397  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  31    0xee398  5      OPC=jmpq_label_1   
  nop                                                                         #  32    0xee39d  1      OPC=nop            
  nop                                                                         #  33    0xee39e  1      OPC=nop            
  nop                                                                         #  34    0xee39f  1      OPC=nop            
.L_ee3a0:                                                                     #        0xee3a0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  35    0xee3a0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  36    0xee3a2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  37    0xee3a6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  38    0xee3a9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  39    0xee3ab  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  40    0xee3af  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  41    0xee3b1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xee3b3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  43    0xee3b8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  44    0xee3b9  3      OPC=orl_r32_imm8   
  nop                                                                         #  45    0xee3bc  1      OPC=nop            
  nop                                                                         #  46    0xee3bd  1      OPC=nop            
  nop                                                                         #  47    0xee3be  1      OPC=nop            
  nop                                                                         #  48    0xee3bf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  49    0xee3c0  5      OPC=jmpq_label_1   
  nop                                                                         #  50    0xee3c5  1      OPC=nop            
  nop                                                                         #  51    0xee3c6  1      OPC=nop            
  nop                                                                         #  52    0xee3c7  1      OPC=nop            
  nop                                                                         #  53    0xee3c8  1      OPC=nop            
  nop                                                                         #  54    0xee3c9  1      OPC=nop            
  nop                                                                         #  55    0xee3ca  1      OPC=nop            
  nop                                                                         #  56    0xee3cb  1      OPC=nop            
  nop                                                                         #  57    0xee3cc  1      OPC=nop            
  nop                                                                         #  58    0xee3cd  1      OPC=nop            
  nop                                                                         #  59    0xee3ce  1      OPC=nop            
  nop                                                                         #  60    0xee3cf  1      OPC=nop            
  nop                                                                         #  61    0xee3d0  1      OPC=nop            
  nop                                                                         #  62    0xee3d1  1      OPC=nop            
  nop                                                                         #  63    0xee3d2  1      OPC=nop            
  nop                                                                         #  64    0xee3d3  1      OPC=nop            
  nop                                                                         #  65    0xee3d4  1      OPC=nop            
  nop                                                                         #  66    0xee3d5  1      OPC=nop            
  nop                                                                         #  67    0xee3d6  1      OPC=nop            
  nop                                                                         #  68    0xee3d7  1      OPC=nop            
  nop                                                                         #  69    0xee3d8  1      OPC=nop            
  nop                                                                         #  70    0xee3d9  1      OPC=nop            
  nop                                                                         #  71    0xee3da  1      OPC=nop            
  nop                                                                         #  72    0xee3db  1      OPC=nop            
  nop                                                                         #  73    0xee3dc  1      OPC=nop            
  nop                                                                         #  74    0xee3dd  1      OPC=nop            
  nop                                                                         #  75    0xee3de  1      OPC=nop            
  nop                                                                         #  76    0xee3df  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

