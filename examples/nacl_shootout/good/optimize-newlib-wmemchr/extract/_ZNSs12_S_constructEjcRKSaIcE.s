  .text
  .globl _ZNSs12_S_constructEjcRKSaIcE
  .type _ZNSs12_S_constructEjcRKSaIcE, @function

#! file-offset 0xede00
#! rip-offset  0xade00
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSs12_S_constructEjcRKSaIcE:          #        0xade00  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)                 #  1     0xade00  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)                 #  2     0xade05  5      OPC=movq_m64_r64    
  movl $0x1007358c, %r12d                #  3     0xade0a  6      OPC=movl_r32_imm32  
  movq %r13, -0x10(%rsp)                 #  4     0xade10  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                  #  5     0xade15  5      OPC=movq_m64_r64    
  subl $0x38, %esp                       #  6     0xade1a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  7     0xade1d  3      OPC=addq_r64_r64    
  testl %edi, %edi                       #  8     0xade20  2      OPC=testl_r32_r32   
  movl %edi, %ebx                        #  9     0xade22  2      OPC=movl_r32_r32    
  movl %esi, %r13d                       #  10    0xade24  3      OPC=movl_r32_r32    
  movl %edx, %edx                        #  11    0xade27  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                      #  12    0xade29  3      OPC=movl_r32_r32    
  je .L_ade80                            #  13    0xade2c  2      OPC=je_label        
  xorl %esi, %esi                        #  14    0xade2e  2      OPC=xorl_r32_r32    
  movb %r13b, 0x8(%rsp)                  #  15    0xade30  5      OPC=movb_m8_r8      
  nop                                    #  16    0xade35  1      OPC=nop             
  nop                                    #  17    0xade36  1      OPC=nop             
  nop                                    #  18    0xade37  1      OPC=nop             
  nop                                    #  19    0xade38  1      OPC=nop             
  nop                                    #  20    0xade39  1      OPC=nop             
  nop                                    #  21    0xade3a  1      OPC=nop             
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  22    0xade3b  5      OPC=callq_label     
  cmpl $0x1, %ebx                        #  23    0xade40  3      OPC=cmpl_r32_imm8   
  movl %eax, %r14d                       #  24    0xade43  3      OPC=movl_r32_r32    
  movzbl 0x8(%rsp), %ecx                 #  25    0xade46  5      OPC=movzbl_r32_m8   
  leal 0xc(%r14), %r12d                  #  26    0xade4b  4      OPC=leal_r32_m16    
  je .L_adec0                            #  27    0xade4f  2      OPC=je_label        
  movsbl %cl, %esi                       #  28    0xade51  3      OPC=movsbl_r32_r8   
  movl %ebx, %edx                        #  29    0xade54  2      OPC=movl_r32_r32    
  movl %r12d, %edi                       #  30    0xade56  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                         #  31    0xade59  2      OPC=xchgw_ax_r16    
  callq .memset                          #  32    0xade5b  5      OPC=callq_label     
.L_ade60:                                #        0xade60  0      OPC=<label>         
  movl %r14d, %r14d                      #  33    0xade60  3      OPC=movl_r32_r32    
  movl %ebx, (%r15,%r14,1)               #  34    0xade63  4      OPC=movl_m32_r32    
  addl %r12d, %ebx                       #  35    0xade67  3      OPC=addl_r32_r32    
  movl %r14d, %r14d                      #  36    0xade6a  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r14,1)            #  37    0xade6d  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                        #  38    0xade76  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rbx,1)               #  39    0xade78  5      OPC=movb_m8_imm8    
  nop                                    #  40    0xade7d  1      OPC=nop             
  nop                                    #  41    0xade7e  1      OPC=nop             
  nop                                    #  42    0xade7f  1      OPC=nop             
.L_ade80:                                #        0xade80  0      OPC=<label>         
  movl %r12d, %eax                       #  43    0xade80  3      OPC=movl_r32_r32    
  movq 0x18(%rsp), %rbx                  #  44    0xade83  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12                  #  45    0xade88  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13                  #  46    0xade8d  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14                  #  47    0xade92  5      OPC=movq_r64_m64    
  addl $0x38, %esp                       #  48    0xade97  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  49    0xade9a  3      OPC=addq_r64_r64    
  popq %r11                              #  50    0xade9d  2      OPC=popq_r64_1      
  nop                                    #  51    0xade9f  1      OPC=nop             
  andl $0xffffffe0, %r11d                #  52    0xadea0  7      OPC=andl_r32_imm32  
  nop                                    #  53    0xadea7  1      OPC=nop             
  nop                                    #  54    0xadea8  1      OPC=nop             
  nop                                    #  55    0xadea9  1      OPC=nop             
  nop                                    #  56    0xadeaa  1      OPC=nop             
  addq %r15, %r11                        #  57    0xadeab  3      OPC=addq_r64_r64    
  jmpq %r11                              #  58    0xadeae  3      OPC=jmpq_r64        
  nop                                    #  59    0xadeb1  1      OPC=nop             
  nop                                    #  60    0xadeb2  1      OPC=nop             
  nop                                    #  61    0xadeb3  1      OPC=nop             
  nop                                    #  62    0xadeb4  1      OPC=nop             
  nop                                    #  63    0xadeb5  1      OPC=nop             
  nop                                    #  64    0xadeb6  1      OPC=nop             
  nop                                    #  65    0xadeb7  1      OPC=nop             
  nop                                    #  66    0xadeb8  1      OPC=nop             
  nop                                    #  67    0xadeb9  1      OPC=nop             
  nop                                    #  68    0xadeba  1      OPC=nop             
  nop                                    #  69    0xadebb  1      OPC=nop             
  nop                                    #  70    0xadebc  1      OPC=nop             
  nop                                    #  71    0xadebd  1      OPC=nop             
  nop                                    #  72    0xadebe  1      OPC=nop             
  nop                                    #  73    0xadebf  1      OPC=nop             
  nop                                    #  74    0xadec0  1      OPC=nop             
  nop                                    #  75    0xadec1  1      OPC=nop             
  nop                                    #  76    0xadec2  1      OPC=nop             
  nop                                    #  77    0xadec3  1      OPC=nop             
  nop                                    #  78    0xadec4  1      OPC=nop             
  nop                                    #  79    0xadec5  1      OPC=nop             
  nop                                    #  80    0xadec6  1      OPC=nop             
.L_adec0:                                #        0xadec7  0      OPC=<label>         
  movl %r12d, %r12d                      #  81    0xadec7  3      OPC=movl_r32_r32    
  movb %r13b, (%r15,%r12,1)              #  82    0xadeca  4      OPC=movb_m8_r8      
  jmpq .L_ade60                          #  83    0xadece  2      OPC=jmpq_label      
  nop                                    #  84    0xaded0  1      OPC=nop             
  nop                                    #  85    0xaded1  1      OPC=nop             
  nop                                    #  86    0xaded2  1      OPC=nop             
  nop                                    #  87    0xaded3  1      OPC=nop             
  nop                                    #  88    0xaded4  1      OPC=nop             
  nop                                    #  89    0xaded5  1      OPC=nop             
  nop                                    #  90    0xaded6  1      OPC=nop             
  nop                                    #  91    0xaded7  1      OPC=nop             
  nop                                    #  92    0xaded8  1      OPC=nop             
  nop                                    #  93    0xaded9  1      OPC=nop             
  nop                                    #  94    0xadeda  1      OPC=nop             
  nop                                    #  95    0xadedb  1      OPC=nop             
  nop                                    #  96    0xadedc  1      OPC=nop             
  nop                                    #  97    0xadedd  1      OPC=nop             
  nop                                    #  98    0xadede  1      OPC=nop             
  nop                                    #  99    0xadedf  1      OPC=nop             
  nop                                    #  100   0xadee0  1      OPC=nop             
  nop                                    #  101   0xadee1  1      OPC=nop             
  nop                                    #  102   0xadee2  1      OPC=nop             
  nop                                    #  103   0xadee3  1      OPC=nop             
  nop                                    #  104   0xadee4  1      OPC=nop             
  nop                                    #  105   0xadee5  1      OPC=nop             
  nop                                    #  106   0xadee6  1      OPC=nop             
                                                                                      
.size _ZNSs12_S_constructEjcRKSaIcE, .-_ZNSs12_S_constructEjcRKSaIcE

