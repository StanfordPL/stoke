  .text
  .globl _ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi
  .type _ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi, @function

#! file-offset 0x128bc0
#! rip-offset  0xe8bc0
#! capacity    160 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi:  #        0xe8bc0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                                 #  1     0xe8bc0  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)                                 #  2     0xe8bc5  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                        #  3     0xe8bca  2      OPC=movl_r32_r32    
  movq %r13, -0x8(%rsp)                                  #  4     0xe8bcc  5      OPC=movq_m64_r64    
  movl $0x10, %edi                                       #  5     0xe8bd1  5      OPC=movl_r32_imm32  
  subl $0x18, %esp                                       #  6     0xe8bd6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                        #  7     0xe8bd9  3      OPC=addq_r64_r64    
  movl %edx, %r12d                                       #  8     0xe8bdc  3      OPC=movl_r32_r32    
  nop                                                    #  9     0xe8bdf  1      OPC=nop             
  movl %esi, %r13d                                       #  10    0xe8be0  3      OPC=movl_r32_r32    
  nop                                                    #  11    0xe8be3  1      OPC=nop             
  nop                                                    #  12    0xe8be4  1      OPC=nop             
  nop                                                    #  13    0xe8be5  1      OPC=nop             
  nop                                                    #  14    0xe8be6  1      OPC=nop             
  nop                                                    #  15    0xe8be7  1      OPC=nop             
  nop                                                    #  16    0xe8be8  1      OPC=nop             
  nop                                                    #  17    0xe8be9  1      OPC=nop             
  nop                                                    #  18    0xe8bea  1      OPC=nop             
  nop                                                    #  19    0xe8beb  1      OPC=nop             
  nop                                                    #  20    0xe8bec  1      OPC=nop             
  nop                                                    #  21    0xe8bed  1      OPC=nop             
  nop                                                    #  22    0xe8bee  1      OPC=nop             
  nop                                                    #  23    0xe8bef  1      OPC=nop             
  nop                                                    #  24    0xe8bf0  1      OPC=nop             
  nop                                                    #  25    0xe8bf1  1      OPC=nop             
  nop                                                    #  26    0xe8bf2  1      OPC=nop             
  nop                                                    #  27    0xe8bf3  1      OPC=nop             
  nop                                                    #  28    0xe8bf4  1      OPC=nop             
  nop                                                    #  29    0xe8bf5  1      OPC=nop             
  nop                                                    #  30    0xe8bf6  1      OPC=nop             
  nop                                                    #  31    0xe8bf7  1      OPC=nop             
  nop                                                    #  32    0xe8bf8  1      OPC=nop             
  nop                                                    #  33    0xe8bf9  1      OPC=nop             
  nop                                                    #  34    0xe8bfa  1      OPC=nop             
  callq ._Znwj                                           #  35    0xe8bfb  5      OPC=callq_label     
  movl %ebx, %ebx                                        #  36    0xe8c00  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rbx,1), %edx                           #  37    0xe8c02  5      OPC=movl_r32_m32    
  movl %eax, %eax                                        #  38    0xe8c07  2      OPC=movl_r32_r32    
  movl %eax, %eax                                        #  39    0xe8c09  2      OPC=movl_r32_r32    
  movl %r13d, 0x4(%r15,%rax,1)                           #  40    0xe8c0b  5      OPC=movl_m32_r32    
  movl %eax, %eax                                        #  41    0xe8c10  2      OPC=movl_r32_r32    
  movl %r12d, 0x8(%r15,%rax,1)                           #  42    0xe8c12  5      OPC=movl_m32_r32    
  nop                                                    #  43    0xe8c17  1      OPC=nop             
  nop                                                    #  44    0xe8c18  1      OPC=nop             
  nop                                                    #  45    0xe8c19  1      OPC=nop             
  nop                                                    #  46    0xe8c1a  1      OPC=nop             
  nop                                                    #  47    0xe8c1b  1      OPC=nop             
  nop                                                    #  48    0xe8c1c  1      OPC=nop             
  nop                                                    #  49    0xe8c1d  1      OPC=nop             
  nop                                                    #  50    0xe8c1e  1      OPC=nop             
  nop                                                    #  51    0xe8c1f  1      OPC=nop             
  movl %eax, %eax                                        #  52    0xe8c20  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rax,1)                            #  53    0xe8c22  9      OPC=movl_m32_imm32  
  movl %eax, %eax                                        #  54    0xe8c2b  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                               #  55    0xe8c2d  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                        #  56    0xe8c31  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rbx,1)                           #  57    0xe8c33  5      OPC=movl_m32_r32    
  movq 0x8(%rsp), %r12                                   #  58    0xe8c38  5      OPC=movq_r64_m64    
  nop                                                    #  59    0xe8c3d  1      OPC=nop             
  nop                                                    #  60    0xe8c3e  1      OPC=nop             
  nop                                                    #  61    0xe8c3f  1      OPC=nop             
  movq (%rsp), %rbx                                      #  62    0xe8c40  4      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13                                  #  63    0xe8c44  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                       #  64    0xe8c49  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                        #  65    0xe8c4c  3      OPC=addq_r64_r64    
  popq %r11                                              #  66    0xe8c4f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                #  67    0xe8c51  7      OPC=andl_r32_imm32  
  nop                                                    #  68    0xe8c58  1      OPC=nop             
  nop                                                    #  69    0xe8c59  1      OPC=nop             
  nop                                                    #  70    0xe8c5a  1      OPC=nop             
  nop                                                    #  71    0xe8c5b  1      OPC=nop             
  addq %r15, %r11                                        #  72    0xe8c5c  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  73    0xe8c5f  3      OPC=jmpq_r64        
  nop                                                    #  74    0xe8c62  1      OPC=nop             
  nop                                                    #  75    0xe8c63  1      OPC=nop             
  nop                                                    #  76    0xe8c64  1      OPC=nop             
  nop                                                    #  77    0xe8c65  1      OPC=nop             
  nop                                                    #  78    0xe8c66  1      OPC=nop             
                                                                                                      
.size _ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi, .-_ZNSt8ios_base17register_callbackEPFvNS_5eventERS_iEi

