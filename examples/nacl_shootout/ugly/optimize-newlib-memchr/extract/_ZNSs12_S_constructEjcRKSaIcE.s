  .text
  .globl _ZNSs12_S_constructEjcRKSaIcE
  .type _ZNSs12_S_constructEjcRKSaIcE, @function

#! file-offset 0xee520
#! rip-offset  0xae520
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSs12_S_constructEjcRKSaIcE:          #        0xae520  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)                 #  1     0xae520  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)                 #  2     0xae525  5      OPC=movq_m64_r64    
  movl $0x1007358c, %r12d                #  3     0xae52a  6      OPC=movl_r32_imm32  
  movq %r13, -0x10(%rsp)                 #  4     0xae530  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                  #  5     0xae535  5      OPC=movq_m64_r64    
  subl $0x38, %esp                       #  6     0xae53a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  7     0xae53d  3      OPC=addq_r64_r64    
  testl %edi, %edi                       #  8     0xae540  2      OPC=testl_r32_r32   
  movl %edi, %ebx                        #  9     0xae542  2      OPC=movl_r32_r32    
  movl %esi, %r13d                       #  10    0xae544  3      OPC=movl_r32_r32    
  movl %edx, %edx                        #  11    0xae547  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                      #  12    0xae549  3      OPC=movl_r32_r32    
  je .L_ae5a0                            #  13    0xae54c  2      OPC=je_label        
  xorl %esi, %esi                        #  14    0xae54e  2      OPC=xorl_r32_r32    
  movb %r13b, 0x8(%rsp)                  #  15    0xae550  5      OPC=movb_m8_r8      
  nop                                    #  16    0xae555  1      OPC=nop             
  nop                                    #  17    0xae556  1      OPC=nop             
  nop                                    #  18    0xae557  1      OPC=nop             
  nop                                    #  19    0xae558  1      OPC=nop             
  nop                                    #  20    0xae559  1      OPC=nop             
  nop                                    #  21    0xae55a  1      OPC=nop             
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  22    0xae55b  5      OPC=callq_label     
  cmpl $0x1, %ebx                        #  23    0xae560  3      OPC=cmpl_r32_imm8   
  movl %eax, %r14d                       #  24    0xae563  3      OPC=movl_r32_r32    
  movzbl 0x8(%rsp), %ecx                 #  25    0xae566  5      OPC=movzbl_r32_m8   
  leal 0xc(%r14), %r12d                  #  26    0xae56b  4      OPC=leal_r32_m16    
  je .L_ae5e0                            #  27    0xae56f  2      OPC=je_label        
  movsbl %cl, %esi                       #  28    0xae571  3      OPC=movsbl_r32_r8   
  movl %ebx, %edx                        #  29    0xae574  2      OPC=movl_r32_r32    
  movl %r12d, %edi                       #  30    0xae576  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                         #  31    0xae579  2      OPC=xchgw_ax_r16    
  callq .memset                          #  32    0xae57b  5      OPC=callq_label     
.L_ae580:                                #        0xae580  0      OPC=<label>         
  movl %r14d, %r14d                      #  33    0xae580  3      OPC=movl_r32_r32    
  movl %ebx, (%r15,%r14,1)               #  34    0xae583  4      OPC=movl_m32_r32    
  addl %r12d, %ebx                       #  35    0xae587  3      OPC=addl_r32_r32    
  movl %r14d, %r14d                      #  36    0xae58a  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r14,1)            #  37    0xae58d  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                        #  38    0xae596  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rbx,1)               #  39    0xae598  5      OPC=movb_m8_imm8    
  nop                                    #  40    0xae59d  1      OPC=nop             
  nop                                    #  41    0xae59e  1      OPC=nop             
  nop                                    #  42    0xae59f  1      OPC=nop             
.L_ae5a0:                                #        0xae5a0  0      OPC=<label>         
  movl %r12d, %eax                       #  43    0xae5a0  3      OPC=movl_r32_r32    
  movq 0x18(%rsp), %rbx                  #  44    0xae5a3  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12                  #  45    0xae5a8  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13                  #  46    0xae5ad  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14                  #  47    0xae5b2  5      OPC=movq_r64_m64    
  addl $0x38, %esp                       #  48    0xae5b7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  49    0xae5ba  3      OPC=addq_r64_r64    
  popq %r11                              #  50    0xae5bd  2      OPC=popq_r64_1      
  nop                                    #  51    0xae5bf  1      OPC=nop             
  andl $0xffffffe0, %r11d                #  52    0xae5c0  7      OPC=andl_r32_imm32  
  nop                                    #  53    0xae5c7  1      OPC=nop             
  nop                                    #  54    0xae5c8  1      OPC=nop             
  nop                                    #  55    0xae5c9  1      OPC=nop             
  nop                                    #  56    0xae5ca  1      OPC=nop             
  addq %r15, %r11                        #  57    0xae5cb  3      OPC=addq_r64_r64    
  jmpq %r11                              #  58    0xae5ce  3      OPC=jmpq_r64        
  nop                                    #  59    0xae5d1  1      OPC=nop             
  nop                                    #  60    0xae5d2  1      OPC=nop             
  nop                                    #  61    0xae5d3  1      OPC=nop             
  nop                                    #  62    0xae5d4  1      OPC=nop             
  nop                                    #  63    0xae5d5  1      OPC=nop             
  nop                                    #  64    0xae5d6  1      OPC=nop             
  nop                                    #  65    0xae5d7  1      OPC=nop             
  nop                                    #  66    0xae5d8  1      OPC=nop             
  nop                                    #  67    0xae5d9  1      OPC=nop             
  nop                                    #  68    0xae5da  1      OPC=nop             
  nop                                    #  69    0xae5db  1      OPC=nop             
  nop                                    #  70    0xae5dc  1      OPC=nop             
  nop                                    #  71    0xae5dd  1      OPC=nop             
  nop                                    #  72    0xae5de  1      OPC=nop             
  nop                                    #  73    0xae5df  1      OPC=nop             
  nop                                    #  74    0xae5e0  1      OPC=nop             
  nop                                    #  75    0xae5e1  1      OPC=nop             
  nop                                    #  76    0xae5e2  1      OPC=nop             
  nop                                    #  77    0xae5e3  1      OPC=nop             
  nop                                    #  78    0xae5e4  1      OPC=nop             
  nop                                    #  79    0xae5e5  1      OPC=nop             
  nop                                    #  80    0xae5e6  1      OPC=nop             
.L_ae5e0:                                #        0xae5e7  0      OPC=<label>         
  movl %r12d, %r12d                      #  81    0xae5e7  3      OPC=movl_r32_r32    
  movb %r13b, (%r15,%r12,1)              #  82    0xae5ea  4      OPC=movb_m8_r8      
  jmpq .L_ae580                          #  83    0xae5ee  2      OPC=jmpq_label      
  nop                                    #  84    0xae5f0  1      OPC=nop             
  nop                                    #  85    0xae5f1  1      OPC=nop             
  nop                                    #  86    0xae5f2  1      OPC=nop             
  nop                                    #  87    0xae5f3  1      OPC=nop             
  nop                                    #  88    0xae5f4  1      OPC=nop             
  nop                                    #  89    0xae5f5  1      OPC=nop             
  nop                                    #  90    0xae5f6  1      OPC=nop             
  nop                                    #  91    0xae5f7  1      OPC=nop             
  nop                                    #  92    0xae5f8  1      OPC=nop             
  nop                                    #  93    0xae5f9  1      OPC=nop             
  nop                                    #  94    0xae5fa  1      OPC=nop             
  nop                                    #  95    0xae5fb  1      OPC=nop             
  nop                                    #  96    0xae5fc  1      OPC=nop             
  nop                                    #  97    0xae5fd  1      OPC=nop             
  nop                                    #  98    0xae5fe  1      OPC=nop             
  nop                                    #  99    0xae5ff  1      OPC=nop             
  nop                                    #  100   0xae600  1      OPC=nop             
  nop                                    #  101   0xae601  1      OPC=nop             
  nop                                    #  102   0xae602  1      OPC=nop             
  nop                                    #  103   0xae603  1      OPC=nop             
  nop                                    #  104   0xae604  1      OPC=nop             
  nop                                    #  105   0xae605  1      OPC=nop             
  nop                                    #  106   0xae606  1      OPC=nop             
                                                                                      
.size _ZNSs12_S_constructEjcRKSaIcE, .-_ZNSs12_S_constructEjcRKSaIcE

