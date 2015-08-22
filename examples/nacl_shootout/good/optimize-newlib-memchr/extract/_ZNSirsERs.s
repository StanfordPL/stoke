  .text
  .globl _ZNSirsERs
  .type _ZNSirsERs, @function

#! file-offset 0xb0e00
#! rip-offset  0x70e00
#! capacity    192 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZNSirsERs:                                                          #        0x70e00  0      OPC=<label>         
  pushq %r12                                                          #  1     0x70e00  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                                    #  2     0x70e02  3      OPC=movl_r32_r32    
  pushq %rbx                                                          #  3     0x70e05  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                     #  4     0x70e06  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                     #  5     0x70e08  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                    #  6     0x70e0a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                     #  7     0x70e0d  3      OPC=addq_r64_r64    
  leal 0xc(%rsp), %esi                                                #  8     0x70e10  4      OPC=leal_r32_m16    
  nop                                                                 #  9     0x70e14  1      OPC=nop             
  nop                                                                 #  10    0x70e15  1      OPC=nop             
  nop                                                                 #  11    0x70e16  1      OPC=nop             
  nop                                                                 #  12    0x70e17  1      OPC=nop             
  nop                                                                 #  13    0x70e18  1      OPC=nop             
  nop                                                                 #  14    0x70e19  1      OPC=nop             
  nop                                                                 #  15    0x70e1a  1      OPC=nop             
  callq ._ZNSi10_M_extractIlEERSiRT_                                  #  16    0x70e1b  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  17    0x70e20  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                            #  18    0x70e22  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                     #  19    0x70e26  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                     #  20    0x70e29  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                            #  21    0x70e2b  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                     #  22    0x70e2f  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                     #  23    0x70e31  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                        #  24    0x70e33  5      OPC=movl_r32_m32    
  testb $0x5, %sil                                                    #  25    0x70e38  4      OPC=testb_r8_imm8   
  nop                                                                 #  26    0x70e3c  1      OPC=nop             
  nop                                                                 #  27    0x70e3d  1      OPC=nop             
  nop                                                                 #  28    0x70e3e  1      OPC=nop             
  nop                                                                 #  29    0x70e3f  1      OPC=nop             
  jne .L_70e60                                                        #  30    0x70e40  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                                                #  31    0x70e42  4      OPC=movl_r32_m32    
  leal 0x8000(%rax), %edx                                             #  32    0x70e46  6      OPC=leal_r32_m16    
  cmpl $0xffff, %edx                                                  #  33    0x70e4c  6      OPC=cmpl_r32_imm32  
  ja .L_70e80                                                         #  34    0x70e52  2      OPC=ja_label        
  movl %r12d, %r12d                                                   #  35    0x70e54  3      OPC=movl_r32_r32    
  movw %ax, (%r15,%r12,1)                                             #  36    0x70e57  5      OPC=movw_m16_r16    
  nop                                                                 #  37    0x70e5c  1      OPC=nop             
  nop                                                                 #  38    0x70e5d  1      OPC=nop             
  nop                                                                 #  39    0x70e5e  1      OPC=nop             
  nop                                                                 #  40    0x70e5f  1      OPC=nop             
.L_70e60:                                                             #        0x70e60  0      OPC=<label>         
  addl $0x18, %esp                                                    #  41    0x70e60  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                     #  42    0x70e63  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                     #  43    0x70e66  2      OPC=movl_r32_r32    
  popq %rbx                                                           #  44    0x70e68  1      OPC=popq_r64_1      
  popq %r12                                                           #  45    0x70e69  2      OPC=popq_r64_1      
  popq %r11                                                           #  46    0x70e6b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  47    0x70e6d  7      OPC=andl_r32_imm32  
  nop                                                                 #  48    0x70e74  1      OPC=nop             
  nop                                                                 #  49    0x70e75  1      OPC=nop             
  nop                                                                 #  50    0x70e76  1      OPC=nop             
  nop                                                                 #  51    0x70e77  1      OPC=nop             
  addq %r15, %r11                                                     #  52    0x70e78  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  53    0x70e7b  3      OPC=jmpq_r64        
  nop                                                                 #  54    0x70e7e  1      OPC=nop             
  nop                                                                 #  55    0x70e7f  1      OPC=nop             
  nop                                                                 #  56    0x70e80  1      OPC=nop             
  nop                                                                 #  57    0x70e81  1      OPC=nop             
  nop                                                                 #  58    0x70e82  1      OPC=nop             
  nop                                                                 #  59    0x70e83  1      OPC=nop             
  nop                                                                 #  60    0x70e84  1      OPC=nop             
  nop                                                                 #  61    0x70e85  1      OPC=nop             
  nop                                                                 #  62    0x70e86  1      OPC=nop             
.L_70e80:                                                             #        0x70e87  0      OPC=<label>         
  orl $0x4, %esi                                                      #  63    0x70e87  3      OPC=orl_r32_imm8    
  nop                                                                 #  64    0x70e8a  1      OPC=nop             
  nop                                                                 #  65    0x70e8b  1      OPC=nop             
  nop                                                                 #  66    0x70e8c  1      OPC=nop             
  nop                                                                 #  67    0x70e8d  1      OPC=nop             
  nop                                                                 #  68    0x70e8e  1      OPC=nop             
  nop                                                                 #  69    0x70e8f  1      OPC=nop             
  nop                                                                 #  70    0x70e90  1      OPC=nop             
  nop                                                                 #  71    0x70e91  1      OPC=nop             
  nop                                                                 #  72    0x70e92  1      OPC=nop             
  nop                                                                 #  73    0x70e93  1      OPC=nop             
  nop                                                                 #  74    0x70e94  1      OPC=nop             
  nop                                                                 #  75    0x70e95  1      OPC=nop             
  nop                                                                 #  76    0x70e96  1      OPC=nop             
  nop                                                                 #  77    0x70e97  1      OPC=nop             
  nop                                                                 #  78    0x70e98  1      OPC=nop             
  nop                                                                 #  79    0x70e99  1      OPC=nop             
  nop                                                                 #  80    0x70e9a  1      OPC=nop             
  nop                                                                 #  81    0x70e9b  1      OPC=nop             
  nop                                                                 #  82    0x70e9c  1      OPC=nop             
  nop                                                                 #  83    0x70e9d  1      OPC=nop             
  nop                                                                 #  84    0x70e9e  1      OPC=nop             
  nop                                                                 #  85    0x70e9f  1      OPC=nop             
  nop                                                                 #  86    0x70ea0  1      OPC=nop             
  nop                                                                 #  87    0x70ea1  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  88    0x70ea2  5      OPC=callq_label     
  addl $0x18, %esp                                                    #  89    0x70ea7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                     #  90    0x70eaa  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                     #  91    0x70ead  2      OPC=movl_r32_r32    
  popq %rbx                                                           #  92    0x70eaf  1      OPC=popq_r64_1      
  popq %r12                                                           #  93    0x70eb0  2      OPC=popq_r64_1      
  popq %r11                                                           #  94    0x70eb2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  95    0x70eb4  7      OPC=andl_r32_imm32  
  nop                                                                 #  96    0x70ebb  1      OPC=nop             
  nop                                                                 #  97    0x70ebc  1      OPC=nop             
  nop                                                                 #  98    0x70ebd  1      OPC=nop             
  nop                                                                 #  99    0x70ebe  1      OPC=nop             
  addq %r15, %r11                                                     #  100   0x70ebf  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  101   0x70ec2  3      OPC=jmpq_r64        
  nop                                                                 #  102   0x70ec5  1      OPC=nop             
  nop                                                                 #  103   0x70ec6  1      OPC=nop             
  nop                                                                 #  104   0x70ec7  1      OPC=nop             
  nop                                                                 #  105   0x70ec8  1      OPC=nop             
  nop                                                                 #  106   0x70ec9  1      OPC=nop             
  nop                                                                 #  107   0x70eca  1      OPC=nop             
  nop                                                                 #  108   0x70ecb  1      OPC=nop             
  nop                                                                 #  109   0x70ecc  1      OPC=nop             
  nop                                                                 #  110   0x70ecd  1      OPC=nop             
                                                                                                                   
.size _ZNSirsERs, .-_ZNSirsERs

