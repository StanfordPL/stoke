  .text
  .globl _ZNSiC1Ev
  .type _ZNSiC1Ev, @function

#! file-offset 0xa87a0
#! rip-offset  0x687a0
#! capacity    256 bytes

# Text                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSiC1Ev:                                                                    #        0x687a0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                        #  1     0x687a0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                             #  2     0x687a5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                       #  3     0x687a8  5      OPC=movq_m64_r64    
  leal 0x8(%r12), %ebx                                                         #  4     0x687ad  5      OPC=leal_r32_m16    
  subl $0x18, %esp                                                             #  5     0x687b2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                              #  6     0x687b5  3      OPC=addq_r64_r64    
  movl %ebx, %edi                                                              #  7     0x687b8  2      OPC=movl_r32_r32    
  nop                                                                          #  8     0x687ba  1      OPC=nop             
  callq ._ZNSt8ios_baseC2Ev                                                    #  9     0x687bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                              #  10    0x687c0  2      OPC=movl_r32_r32    
  movb $0x0, 0x74(%r15,%rbx,1)                                                 #  11    0x687c2  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                              #  12    0x687c8  2      OPC=movl_r32_r32    
  movl $0x0, 0x70(%r15,%rbx,1)                                                 #  13    0x687ca  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                                              #  14    0x687d3  2      OPC=xorl_r32_r32    
  movl %r12d, %r12d                                                            #  15    0x687d5  3      OPC=movl_r32_r32    
  movl $0x1003a82c, (%r15,%r12,1)                                              #  16    0x687d8  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  17    0x687e0  2      OPC=movl_r32_r32    
  movb $0x0, 0x75(%r15,%rbx,1)                                                 #  18    0x687e2  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                                              #  19    0x687e8  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                              #  20    0x687ea  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)                                                 #  21    0x687ec  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  22    0x687f5  2      OPC=movl_r32_r32    
  movl $0x0, 0x7c(%r15,%rbx,1)                                                 #  23    0x687f7  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  24    0x68800  2      OPC=movl_r32_r32    
  movl $0x0, 0x80(%r15,%rbx,1)                                                 #  25    0x68802  12     OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                              #  26    0x6880e  2      OPC=movl_r32_r32    
  movl $0x0, 0x84(%r15,%rbx,1)                                                 #  27    0x68810  12     OPC=movl_m32_imm32  
  nop                                                                          #  28    0x6881c  1      OPC=nop             
  nop                                                                          #  29    0x6881d  1      OPC=nop             
  nop                                                                          #  30    0x6881e  1      OPC=nop             
  nop                                                                          #  31    0x6881f  1      OPC=nop             
  movl %ebx, %ebx                                                              #  32    0x68820  2      OPC=movl_r32_r32    
  movl $0x1003a840, (%r15,%rbx,1)                                              #  33    0x68822  8      OPC=movl_m32_imm32  
  movl %r12d, %r12d                                                            #  34    0x6882a  3      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%r12,1)                                                  #  35    0x6882d  9      OPC=movl_m32_imm32  
  nop                                                                          #  36    0x68836  1      OPC=nop             
  nop                                                                          #  37    0x68837  1      OPC=nop             
  nop                                                                          #  38    0x68838  1      OPC=nop             
  nop                                                                          #  39    0x68839  1      OPC=nop             
  nop                                                                          #  40    0x6883a  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E  #  41    0x6883b  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx                                                         #  42    0x68840  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                        #  43    0x68845  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                             #  44    0x6884a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                              #  45    0x6884d  3      OPC=addq_r64_r64    
  popq %r11                                                                    #  46    0x68850  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                      #  47    0x68852  7      OPC=andl_r32_imm32  
  nop                                                                          #  48    0x68859  1      OPC=nop             
  nop                                                                          #  49    0x6885a  1      OPC=nop             
  nop                                                                          #  50    0x6885b  1      OPC=nop             
  nop                                                                          #  51    0x6885c  1      OPC=nop             
  addq %r15, %r11                                                              #  52    0x6885d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                    #  53    0x68860  3      OPC=jmpq_r64        
  nop                                                                          #  54    0x68863  1      OPC=nop             
  nop                                                                          #  55    0x68864  1      OPC=nop             
  nop                                                                          #  56    0x68865  1      OPC=nop             
  nop                                                                          #  57    0x68866  1      OPC=nop             
  movl %eax, %r12d                                                             #  58    0x68867  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                              #  59    0x6886a  2      OPC=movl_r32_r32    
  nop                                                                          #  60    0x6886c  1      OPC=nop             
  nop                                                                          #  61    0x6886d  1      OPC=nop             
  nop                                                                          #  62    0x6886e  1      OPC=nop             
  nop                                                                          #  63    0x6886f  1      OPC=nop             
  nop                                                                          #  64    0x68870  1      OPC=nop             
  nop                                                                          #  65    0x68871  1      OPC=nop             
  nop                                                                          #  66    0x68872  1      OPC=nop             
  nop                                                                          #  67    0x68873  1      OPC=nop             
  nop                                                                          #  68    0x68874  1      OPC=nop             
  nop                                                                          #  69    0x68875  1      OPC=nop             
  nop                                                                          #  70    0x68876  1      OPC=nop             
  nop                                                                          #  71    0x68877  1      OPC=nop             
  nop                                                                          #  72    0x68878  1      OPC=nop             
  nop                                                                          #  73    0x68879  1      OPC=nop             
  nop                                                                          #  74    0x6887a  1      OPC=nop             
  nop                                                                          #  75    0x6887b  1      OPC=nop             
  nop                                                                          #  76    0x6887c  1      OPC=nop             
  nop                                                                          #  77    0x6887d  1      OPC=nop             
  nop                                                                          #  78    0x6887e  1      OPC=nop             
  nop                                                                          #  79    0x6887f  1      OPC=nop             
  nop                                                                          #  80    0x68880  1      OPC=nop             
  nop                                                                          #  81    0x68881  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEED2Ev                              #  82    0x68882  5      OPC=callq_label     
  movl %r12d, %edi                                                             #  83    0x68887  3      OPC=movl_r32_r32    
  nop                                                                          #  84    0x6888a  1      OPC=nop             
  nop                                                                          #  85    0x6888b  1      OPC=nop             
  nop                                                                          #  86    0x6888c  1      OPC=nop             
  nop                                                                          #  87    0x6888d  1      OPC=nop             
  nop                                                                          #  88    0x6888e  1      OPC=nop             
  nop                                                                          #  89    0x6888f  1      OPC=nop             
  nop                                                                          #  90    0x68890  1      OPC=nop             
  nop                                                                          #  91    0x68891  1      OPC=nop             
  nop                                                                          #  92    0x68892  1      OPC=nop             
  nop                                                                          #  93    0x68893  1      OPC=nop             
  nop                                                                          #  94    0x68894  1      OPC=nop             
  nop                                                                          #  95    0x68895  1      OPC=nop             
  nop                                                                          #  96    0x68896  1      OPC=nop             
  nop                                                                          #  97    0x68897  1      OPC=nop             
  nop                                                                          #  98    0x68898  1      OPC=nop             
  nop                                                                          #  99    0x68899  1      OPC=nop             
  nop                                                                          #  100   0x6889a  1      OPC=nop             
  nop                                                                          #  101   0x6889b  1      OPC=nop             
  nop                                                                          #  102   0x6889c  1      OPC=nop             
  nop                                                                          #  103   0x6889d  1      OPC=nop             
  nop                                                                          #  104   0x6889e  1      OPC=nop             
  nop                                                                          #  105   0x6889f  1      OPC=nop             
  nop                                                                          #  106   0x688a0  1      OPC=nop             
  nop                                                                          #  107   0x688a1  1      OPC=nop             
  callq ._Unwind_Resume                                                        #  108   0x688a2  5      OPC=callq_label     
                                                                                                                            
.size _ZNSiC1Ev, .-_ZNSiC1Ev

