  .text
  .globl _ZNSirsERs
  .type _ZNSirsERs, @function

#! file-offset 0xb03e0
#! rip-offset  0x703e0
#! capacity    192 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZNSirsERs:                                                          #        0x703e0  0      OPC=<label>         
  pushq %r12                                                          #  1     0x703e0  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                                    #  2     0x703e2  3      OPC=movl_r32_r32    
  pushq %rbx                                                          #  3     0x703e5  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                     #  4     0x703e6  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                     #  5     0x703e8  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                    #  6     0x703ea  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                     #  7     0x703ed  3      OPC=addq_r64_r64    
  leal 0xc(%rsp), %esi                                                #  8     0x703f0  4      OPC=leal_r32_m16    
  nop                                                                 #  9     0x703f4  1      OPC=nop             
  nop                                                                 #  10    0x703f5  1      OPC=nop             
  nop                                                                 #  11    0x703f6  1      OPC=nop             
  nop                                                                 #  12    0x703f7  1      OPC=nop             
  nop                                                                 #  13    0x703f8  1      OPC=nop             
  nop                                                                 #  14    0x703f9  1      OPC=nop             
  nop                                                                 #  15    0x703fa  1      OPC=nop             
  callq ._ZNSi10_M_extractIlEERSiRT_                                  #  16    0x703fb  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  17    0x70400  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                            #  18    0x70402  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                     #  19    0x70406  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                     #  20    0x70409  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                            #  21    0x7040b  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                     #  22    0x7040f  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                     #  23    0x70411  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                        #  24    0x70413  5      OPC=movl_r32_m32    
  testb $0x5, %sil                                                    #  25    0x70418  4      OPC=testb_r8_imm8   
  nop                                                                 #  26    0x7041c  1      OPC=nop             
  nop                                                                 #  27    0x7041d  1      OPC=nop             
  nop                                                                 #  28    0x7041e  1      OPC=nop             
  nop                                                                 #  29    0x7041f  1      OPC=nop             
  jne .L_70440                                                        #  30    0x70420  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                                                #  31    0x70422  4      OPC=movl_r32_m32    
  leal 0x8000(%rax), %edx                                             #  32    0x70426  6      OPC=leal_r32_m16    
  cmpl $0xffff, %edx                                                  #  33    0x7042c  6      OPC=cmpl_r32_imm32  
  ja .L_70460                                                         #  34    0x70432  2      OPC=ja_label        
  movl %r12d, %r12d                                                   #  35    0x70434  3      OPC=movl_r32_r32    
  movw %ax, (%r15,%r12,1)                                             #  36    0x70437  5      OPC=movw_m16_r16    
  nop                                                                 #  37    0x7043c  1      OPC=nop             
  nop                                                                 #  38    0x7043d  1      OPC=nop             
  nop                                                                 #  39    0x7043e  1      OPC=nop             
  nop                                                                 #  40    0x7043f  1      OPC=nop             
.L_70440:                                                             #        0x70440  0      OPC=<label>         
  addl $0x18, %esp                                                    #  41    0x70440  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                     #  42    0x70443  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                     #  43    0x70446  2      OPC=movl_r32_r32    
  popq %rbx                                                           #  44    0x70448  1      OPC=popq_r64_1      
  popq %r12                                                           #  45    0x70449  2      OPC=popq_r64_1      
  popq %r11                                                           #  46    0x7044b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  47    0x7044d  7      OPC=andl_r32_imm32  
  nop                                                                 #  48    0x70454  1      OPC=nop             
  nop                                                                 #  49    0x70455  1      OPC=nop             
  nop                                                                 #  50    0x70456  1      OPC=nop             
  nop                                                                 #  51    0x70457  1      OPC=nop             
  addq %r15, %r11                                                     #  52    0x70458  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  53    0x7045b  3      OPC=jmpq_r64        
  nop                                                                 #  54    0x7045e  1      OPC=nop             
  nop                                                                 #  55    0x7045f  1      OPC=nop             
  nop                                                                 #  56    0x70460  1      OPC=nop             
  nop                                                                 #  57    0x70461  1      OPC=nop             
  nop                                                                 #  58    0x70462  1      OPC=nop             
  nop                                                                 #  59    0x70463  1      OPC=nop             
  nop                                                                 #  60    0x70464  1      OPC=nop             
  nop                                                                 #  61    0x70465  1      OPC=nop             
  nop                                                                 #  62    0x70466  1      OPC=nop             
.L_70460:                                                             #        0x70467  0      OPC=<label>         
  orl $0x4, %esi                                                      #  63    0x70467  3      OPC=orl_r32_imm8    
  nop                                                                 #  64    0x7046a  1      OPC=nop             
  nop                                                                 #  65    0x7046b  1      OPC=nop             
  nop                                                                 #  66    0x7046c  1      OPC=nop             
  nop                                                                 #  67    0x7046d  1      OPC=nop             
  nop                                                                 #  68    0x7046e  1      OPC=nop             
  nop                                                                 #  69    0x7046f  1      OPC=nop             
  nop                                                                 #  70    0x70470  1      OPC=nop             
  nop                                                                 #  71    0x70471  1      OPC=nop             
  nop                                                                 #  72    0x70472  1      OPC=nop             
  nop                                                                 #  73    0x70473  1      OPC=nop             
  nop                                                                 #  74    0x70474  1      OPC=nop             
  nop                                                                 #  75    0x70475  1      OPC=nop             
  nop                                                                 #  76    0x70476  1      OPC=nop             
  nop                                                                 #  77    0x70477  1      OPC=nop             
  nop                                                                 #  78    0x70478  1      OPC=nop             
  nop                                                                 #  79    0x70479  1      OPC=nop             
  nop                                                                 #  80    0x7047a  1      OPC=nop             
  nop                                                                 #  81    0x7047b  1      OPC=nop             
  nop                                                                 #  82    0x7047c  1      OPC=nop             
  nop                                                                 #  83    0x7047d  1      OPC=nop             
  nop                                                                 #  84    0x7047e  1      OPC=nop             
  nop                                                                 #  85    0x7047f  1      OPC=nop             
  nop                                                                 #  86    0x70480  1      OPC=nop             
  nop                                                                 #  87    0x70481  1      OPC=nop             
  callq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  88    0x70482  5      OPC=callq_label     
  addl $0x18, %esp                                                    #  89    0x70487  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                     #  90    0x7048a  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                     #  91    0x7048d  2      OPC=movl_r32_r32    
  popq %rbx                                                           #  92    0x7048f  1      OPC=popq_r64_1      
  popq %r12                                                           #  93    0x70490  2      OPC=popq_r64_1      
  popq %r11                                                           #  94    0x70492  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  95    0x70494  7      OPC=andl_r32_imm32  
  nop                                                                 #  96    0x7049b  1      OPC=nop             
  nop                                                                 #  97    0x7049c  1      OPC=nop             
  nop                                                                 #  98    0x7049d  1      OPC=nop             
  nop                                                                 #  99    0x7049e  1      OPC=nop             
  addq %r15, %r11                                                     #  100   0x7049f  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  101   0x704a2  3      OPC=jmpq_r64        
  nop                                                                 #  102   0x704a5  1      OPC=nop             
  nop                                                                 #  103   0x704a6  1      OPC=nop             
  nop                                                                 #  104   0x704a7  1      OPC=nop             
  nop                                                                 #  105   0x704a8  1      OPC=nop             
  nop                                                                 #  106   0x704a9  1      OPC=nop             
  nop                                                                 #  107   0x704aa  1      OPC=nop             
  nop                                                                 #  108   0x704ab  1      OPC=nop             
  nop                                                                 #  109   0x704ac  1      OPC=nop             
  nop                                                                 #  110   0x704ad  1      OPC=nop             
                                                                                                                   
.size _ZNSirsERs, .-_ZNSirsERs

