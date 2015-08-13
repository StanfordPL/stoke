  .text
  .globl _ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi
  .type _ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi, @function

#! file-offset 0x1281a0
#! rip-offset  0xe81a0
#! capacity    160 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi:  #        0xe81a0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                                 #  1     0xe81a0  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)                                 #  2     0xe81a5  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                        #  3     0xe81aa  2      OPC=movl_r32_r32    
  movq %r13, -0x8(%rsp)                                  #  4     0xe81ac  5      OPC=movq_m64_r64    
  movl $0x10, %edi                                       #  5     0xe81b1  5      OPC=movl_r32_imm32  
  subl $0x18, %esp                                       #  6     0xe81b6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                        #  7     0xe81b9  3      OPC=addq_r64_r64    
  movl %edx, %r12d                                       #  8     0xe81bc  3      OPC=movl_r32_r32    
  nop                                                    #  9     0xe81bf  1      OPC=nop             
  movl %esi, %r13d                                       #  10    0xe81c0  3      OPC=movl_r32_r32    
  nop                                                    #  11    0xe81c3  1      OPC=nop             
  nop                                                    #  12    0xe81c4  1      OPC=nop             
  nop                                                    #  13    0xe81c5  1      OPC=nop             
  nop                                                    #  14    0xe81c6  1      OPC=nop             
  nop                                                    #  15    0xe81c7  1      OPC=nop             
  nop                                                    #  16    0xe81c8  1      OPC=nop             
  nop                                                    #  17    0xe81c9  1      OPC=nop             
  nop                                                    #  18    0xe81ca  1      OPC=nop             
  nop                                                    #  19    0xe81cb  1      OPC=nop             
  nop                                                    #  20    0xe81cc  1      OPC=nop             
  nop                                                    #  21    0xe81cd  1      OPC=nop             
  nop                                                    #  22    0xe81ce  1      OPC=nop             
  nop                                                    #  23    0xe81cf  1      OPC=nop             
  nop                                                    #  24    0xe81d0  1      OPC=nop             
  nop                                                    #  25    0xe81d1  1      OPC=nop             
  nop                                                    #  26    0xe81d2  1      OPC=nop             
  nop                                                    #  27    0xe81d3  1      OPC=nop             
  nop                                                    #  28    0xe81d4  1      OPC=nop             
  nop                                                    #  29    0xe81d5  1      OPC=nop             
  nop                                                    #  30    0xe81d6  1      OPC=nop             
  nop                                                    #  31    0xe81d7  1      OPC=nop             
  nop                                                    #  32    0xe81d8  1      OPC=nop             
  nop                                                    #  33    0xe81d9  1      OPC=nop             
  nop                                                    #  34    0xe81da  1      OPC=nop             
  callq ._Znwj                                           #  35    0xe81db  5      OPC=callq_label     
  movl %ebx, %ebx                                        #  36    0xe81e0  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rbx,1), %edx                           #  37    0xe81e2  5      OPC=movl_r32_m32    
  movl %eax, %eax                                        #  38    0xe81e7  2      OPC=movl_r32_r32    
  movl %eax, %eax                                        #  39    0xe81e9  2      OPC=movl_r32_r32    
  movl %r13d, 0x4(%r15,%rax,1)                           #  40    0xe81eb  5      OPC=movl_m32_r32    
  movl %eax, %eax                                        #  41    0xe81f0  2      OPC=movl_r32_r32    
  movl %r12d, 0x8(%r15,%rax,1)                           #  42    0xe81f2  5      OPC=movl_m32_r32    
  nop                                                    #  43    0xe81f7  1      OPC=nop             
  nop                                                    #  44    0xe81f8  1      OPC=nop             
  nop                                                    #  45    0xe81f9  1      OPC=nop             
  nop                                                    #  46    0xe81fa  1      OPC=nop             
  nop                                                    #  47    0xe81fb  1      OPC=nop             
  nop                                                    #  48    0xe81fc  1      OPC=nop             
  nop                                                    #  49    0xe81fd  1      OPC=nop             
  nop                                                    #  50    0xe81fe  1      OPC=nop             
  nop                                                    #  51    0xe81ff  1      OPC=nop             
  movl %eax, %eax                                        #  52    0xe8200  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rax,1)                            #  53    0xe8202  9      OPC=movl_m32_imm32  
  movl %eax, %eax                                        #  54    0xe820b  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                               #  55    0xe820d  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                        #  56    0xe8211  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rbx,1)                           #  57    0xe8213  5      OPC=movl_m32_r32    
  movq 0x8(%rsp), %r12                                   #  58    0xe8218  5      OPC=movq_r64_m64    
  nop                                                    #  59    0xe821d  1      OPC=nop             
  nop                                                    #  60    0xe821e  1      OPC=nop             
  nop                                                    #  61    0xe821f  1      OPC=nop             
  movq (%rsp), %rbx                                      #  62    0xe8220  4      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13                                  #  63    0xe8224  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                       #  64    0xe8229  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                        #  65    0xe822c  3      OPC=addq_r64_r64    
  popq %r11                                              #  66    0xe822f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                #  67    0xe8231  7      OPC=andl_r32_imm32  
  nop                                                    #  68    0xe8238  1      OPC=nop             
  nop                                                    #  69    0xe8239  1      OPC=nop             
  nop                                                    #  70    0xe823a  1      OPC=nop             
  nop                                                    #  71    0xe823b  1      OPC=nop             
  addq %r15, %r11                                        #  72    0xe823c  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  73    0xe823f  3      OPC=jmpq_r64        
  nop                                                    #  74    0xe8242  1      OPC=nop             
  nop                                                    #  75    0xe8243  1      OPC=nop             
  nop                                                    #  76    0xe8244  1      OPC=nop             
  nop                                                    #  77    0xe8245  1      OPC=nop             
  nop                                                    #  78    0xe8246  1      OPC=nop             
                                                                                                      
.size _ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi, .-_ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi

