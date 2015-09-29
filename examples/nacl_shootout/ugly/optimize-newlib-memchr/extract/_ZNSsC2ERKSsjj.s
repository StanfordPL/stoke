  .text
  .globl _ZNSsC2ERKSsjj
  .type _ZNSsC2ERKSsjj, @function

#! file-offset 0xee480
#! rip-offset  0xae480
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSsjj:                                                          #        0xae480  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xae480  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xae481  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xae483  2      OPC=movl_r32_r32    
  subl $0x20, %esp                                                        #  4     0xae485  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  5     0xae488  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  6     0xae48b  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  7     0xae48d  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  8     0xae491  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  9     0xae494  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  10    0xae496  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  11    0xae49a  2      OPC=cmpl_r32_r32    
  nop                                                                     #  12    0xae49c  1      OPC=nop             
  nop                                                                     #  13    0xae49d  1      OPC=nop             
  nop                                                                     #  14    0xae49e  1      OPC=nop             
  nop                                                                     #  15    0xae49f  1      OPC=nop             
  ja .L_ae4e0                                                             #  16    0xae4a0  2      OPC=ja_label        
  subl %edx, %esi                                                         #  17    0xae4a2  2      OPC=subl_r32_r32    
  leal 0x1f(%rsp), %eax                                                   #  18    0xae4a4  4      OPC=leal_r32_m16    
  movb $0x0, (%rsp)                                                       #  19    0xae4a8  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  20    0xae4ac  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  21    0xae4ae  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  22    0xae4b1  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  23    0xae4b3  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  24    0xae4b5  3      OPC=leal_r32_m16    
  movl %eax, %edx                                                         #  25    0xae4b8  2      OPC=movl_r32_r32    
  nop                                                                     #  26    0xae4ba  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xae4bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xae4c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xae4c2  4      OPC=movl_m32_r32    
  addl $0x20, %esp                                                        #  30    0xae4c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xae4c9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xae4cc  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xae4cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xae4cf  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xae4d6  1      OPC=nop             
  nop                                                                     #  36    0xae4d7  1      OPC=nop             
  nop                                                                     #  37    0xae4d8  1      OPC=nop             
  nop                                                                     #  38    0xae4d9  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xae4da  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xae4dd  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xae4e0  1      OPC=nop             
  nop                                                                     #  42    0xae4e1  1      OPC=nop             
  nop                                                                     #  43    0xae4e2  1      OPC=nop             
  nop                                                                     #  44    0xae4e3  1      OPC=nop             
  nop                                                                     #  45    0xae4e4  1      OPC=nop             
  nop                                                                     #  46    0xae4e5  1      OPC=nop             
  nop                                                                     #  47    0xae4e6  1      OPC=nop             
.L_ae4e0:                                                                 #        0xae4e7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xae4e7  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xae4ec  1      OPC=nop             
  nop                                                                     #  50    0xae4ed  1      OPC=nop             
  nop                                                                     #  51    0xae4ee  1      OPC=nop             
  nop                                                                     #  52    0xae4ef  1      OPC=nop             
  nop                                                                     #  53    0xae4f0  1      OPC=nop             
  nop                                                                     #  54    0xae4f1  1      OPC=nop             
  nop                                                                     #  55    0xae4f2  1      OPC=nop             
  nop                                                                     #  56    0xae4f3  1      OPC=nop             
  nop                                                                     #  57    0xae4f4  1      OPC=nop             
  nop                                                                     #  58    0xae4f5  1      OPC=nop             
  nop                                                                     #  59    0xae4f6  1      OPC=nop             
  nop                                                                     #  60    0xae4f7  1      OPC=nop             
  nop                                                                     #  61    0xae4f8  1      OPC=nop             
  nop                                                                     #  62    0xae4f9  1      OPC=nop             
  nop                                                                     #  63    0xae4fa  1      OPC=nop             
  nop                                                                     #  64    0xae4fb  1      OPC=nop             
  nop                                                                     #  65    0xae4fc  1      OPC=nop             
  nop                                                                     #  66    0xae4fd  1      OPC=nop             
  nop                                                                     #  67    0xae4fe  1      OPC=nop             
  nop                                                                     #  68    0xae4ff  1      OPC=nop             
  nop                                                                     #  69    0xae500  1      OPC=nop             
  nop                                                                     #  70    0xae501  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xae502  5      OPC=callq_label     
  movl %eax, %edi                                                         #  72    0xae507  2      OPC=movl_r32_r32    
  nop                                                                     #  73    0xae509  1      OPC=nop             
  nop                                                                     #  74    0xae50a  1      OPC=nop             
  nop                                                                     #  75    0xae50b  1      OPC=nop             
  nop                                                                     #  76    0xae50c  1      OPC=nop             
  nop                                                                     #  77    0xae50d  1      OPC=nop             
  nop                                                                     #  78    0xae50e  1      OPC=nop             
  nop                                                                     #  79    0xae50f  1      OPC=nop             
  nop                                                                     #  80    0xae510  1      OPC=nop             
  nop                                                                     #  81    0xae511  1      OPC=nop             
  nop                                                                     #  82    0xae512  1      OPC=nop             
  nop                                                                     #  83    0xae513  1      OPC=nop             
  nop                                                                     #  84    0xae514  1      OPC=nop             
  nop                                                                     #  85    0xae515  1      OPC=nop             
  nop                                                                     #  86    0xae516  1      OPC=nop             
  nop                                                                     #  87    0xae517  1      OPC=nop             
  nop                                                                     #  88    0xae518  1      OPC=nop             
  nop                                                                     #  89    0xae519  1      OPC=nop             
  nop                                                                     #  90    0xae51a  1      OPC=nop             
  nop                                                                     #  91    0xae51b  1      OPC=nop             
  nop                                                                     #  92    0xae51c  1      OPC=nop             
  nop                                                                     #  93    0xae51d  1      OPC=nop             
  nop                                                                     #  94    0xae51e  1      OPC=nop             
  nop                                                                     #  95    0xae51f  1      OPC=nop             
  nop                                                                     #  96    0xae520  1      OPC=nop             
  nop                                                                     #  97    0xae521  1      OPC=nop             
  callq ._Unwind_Resume                                                   #  98    0xae522  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC2ERKSsjj, .-_ZNSsC2ERKSsjj

