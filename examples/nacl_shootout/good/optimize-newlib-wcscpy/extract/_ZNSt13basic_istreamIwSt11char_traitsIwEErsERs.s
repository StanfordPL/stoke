  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs, @function

#! file-offset 0xaaea0
#! rip-offset  0x6aea0
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEErsERs:                           #        0x6aea0  0      OPC=<label>         
  pushq %r12                                                               #  1     0x6aea0  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                                         #  2     0x6aea2  3      OPC=movl_r32_r32    
  pushq %rbx                                                               #  3     0x6aea5  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  4     0x6aea6  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                          #  5     0x6aea8  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                         #  6     0x6aeaa  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  7     0x6aead  3      OPC=addq_r64_r64    
  leal 0xc(%rsp), %esi                                                     #  8     0x6aeb0  4      OPC=leal_r32_m16    
  nop                                                                      #  9     0x6aeb4  1      OPC=nop             
  nop                                                                      #  10    0x6aeb5  1      OPC=nop             
  nop                                                                      #  11    0x6aeb6  1      OPC=nop             
  nop                                                                      #  12    0x6aeb7  1      OPC=nop             
  nop                                                                      #  13    0x6aeb8  1      OPC=nop             
  nop                                                                      #  14    0x6aeb9  1      OPC=nop             
  nop                                                                      #  15    0x6aeba  1      OPC=nop             
  callq ._ZNSt13basic_istreamIwSt11char_traitsIwEE10_M_extractIlEERS2_RT_  #  16    0x6aebb  5      OPC=callq_label     
  movl %ebx, %ebx                                                          #  17    0x6aec0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  18    0x6aec2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                          #  19    0x6aec6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                          #  20    0x6aec9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                                 #  21    0x6aecb  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                          #  22    0x6aecf  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                          #  23    0x6aed1  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                             #  24    0x6aed3  5      OPC=movl_r32_m32    
  testb $0x5, %sil                                                         #  25    0x6aed8  4      OPC=testb_r8_imm8   
  nop                                                                      #  26    0x6aedc  1      OPC=nop             
  nop                                                                      #  27    0x6aedd  1      OPC=nop             
  nop                                                                      #  28    0x6aede  1      OPC=nop             
  nop                                                                      #  29    0x6aedf  1      OPC=nop             
  jne .L_6af00                                                             #  30    0x6aee0  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                                                     #  31    0x6aee2  4      OPC=movl_r32_m32    
  leal 0x8000(%rax), %edx                                                  #  32    0x6aee6  6      OPC=leal_r32_m16    
  cmpl $0xffff, %edx                                                       #  33    0x6aeec  6      OPC=cmpl_r32_imm32  
  ja .L_6af20                                                              #  34    0x6aef2  2      OPC=ja_label        
  movl %r12d, %r12d                                                        #  35    0x6aef4  3      OPC=movl_r32_r32    
  movw %ax, (%r15,%r12,1)                                                  #  36    0x6aef7  5      OPC=movw_m16_r16    
  nop                                                                      #  37    0x6aefc  1      OPC=nop             
  nop                                                                      #  38    0x6aefd  1      OPC=nop             
  nop                                                                      #  39    0x6aefe  1      OPC=nop             
  nop                                                                      #  40    0x6aeff  1      OPC=nop             
.L_6af00:                                                                  #        0x6af00  0      OPC=<label>         
  addl $0x18, %esp                                                         #  41    0x6af00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  42    0x6af03  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                          #  43    0x6af06  2      OPC=movl_r32_r32    
  popq %rbx                                                                #  44    0x6af08  1      OPC=popq_r64_1      
  popq %r12                                                                #  45    0x6af09  2      OPC=popq_r64_1      
  popq %r11                                                                #  46    0x6af0b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  47    0x6af0d  7      OPC=andl_r32_imm32  
  nop                                                                      #  48    0x6af14  1      OPC=nop             
  nop                                                                      #  49    0x6af15  1      OPC=nop             
  nop                                                                      #  50    0x6af16  1      OPC=nop             
  nop                                                                      #  51    0x6af17  1      OPC=nop             
  addq %r15, %r11                                                          #  52    0x6af18  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  53    0x6af1b  3      OPC=jmpq_r64        
  nop                                                                      #  54    0x6af1e  1      OPC=nop             
  nop                                                                      #  55    0x6af1f  1      OPC=nop             
  nop                                                                      #  56    0x6af20  1      OPC=nop             
  nop                                                                      #  57    0x6af21  1      OPC=nop             
  nop                                                                      #  58    0x6af22  1      OPC=nop             
  nop                                                                      #  59    0x6af23  1      OPC=nop             
  nop                                                                      #  60    0x6af24  1      OPC=nop             
  nop                                                                      #  61    0x6af25  1      OPC=nop             
  nop                                                                      #  62    0x6af26  1      OPC=nop             
.L_6af20:                                                                  #        0x6af27  0      OPC=<label>         
  orl $0x4, %esi                                                           #  63    0x6af27  3      OPC=orl_r32_imm8    
  nop                                                                      #  64    0x6af2a  1      OPC=nop             
  nop                                                                      #  65    0x6af2b  1      OPC=nop             
  nop                                                                      #  66    0x6af2c  1      OPC=nop             
  nop                                                                      #  67    0x6af2d  1      OPC=nop             
  nop                                                                      #  68    0x6af2e  1      OPC=nop             
  nop                                                                      #  69    0x6af2f  1      OPC=nop             
  nop                                                                      #  70    0x6af30  1      OPC=nop             
  nop                                                                      #  71    0x6af31  1      OPC=nop             
  nop                                                                      #  72    0x6af32  1      OPC=nop             
  nop                                                                      #  73    0x6af33  1      OPC=nop             
  nop                                                                      #  74    0x6af34  1      OPC=nop             
  nop                                                                      #  75    0x6af35  1      OPC=nop             
  nop                                                                      #  76    0x6af36  1      OPC=nop             
  nop                                                                      #  77    0x6af37  1      OPC=nop             
  nop                                                                      #  78    0x6af38  1      OPC=nop             
  nop                                                                      #  79    0x6af39  1      OPC=nop             
  nop                                                                      #  80    0x6af3a  1      OPC=nop             
  nop                                                                      #  81    0x6af3b  1      OPC=nop             
  nop                                                                      #  82    0x6af3c  1      OPC=nop             
  nop                                                                      #  83    0x6af3d  1      OPC=nop             
  nop                                                                      #  84    0x6af3e  1      OPC=nop             
  nop                                                                      #  85    0x6af3f  1      OPC=nop             
  nop                                                                      #  86    0x6af40  1      OPC=nop             
  nop                                                                      #  87    0x6af41  1      OPC=nop             
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate       #  88    0x6af42  5      OPC=callq_label     
  addl $0x18, %esp                                                         #  89    0x6af47  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  90    0x6af4a  3      OPC=addq_r64_r64    
  movl %ebx, %eax                                                          #  91    0x6af4d  2      OPC=movl_r32_r32    
  popq %rbx                                                                #  92    0x6af4f  1      OPC=popq_r64_1      
  popq %r12                                                                #  93    0x6af50  2      OPC=popq_r64_1      
  popq %r11                                                                #  94    0x6af52  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  95    0x6af54  7      OPC=andl_r32_imm32  
  nop                                                                      #  96    0x6af5b  1      OPC=nop             
  nop                                                                      #  97    0x6af5c  1      OPC=nop             
  nop                                                                      #  98    0x6af5d  1      OPC=nop             
  nop                                                                      #  99    0x6af5e  1      OPC=nop             
  addq %r15, %r11                                                          #  100   0x6af5f  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  101   0x6af62  3      OPC=jmpq_r64        
  nop                                                                      #  102   0x6af65  1      OPC=nop             
  nop                                                                      #  103   0x6af66  1      OPC=nop             
  nop                                                                      #  104   0x6af67  1      OPC=nop             
  nop                                                                      #  105   0x6af68  1      OPC=nop             
  nop                                                                      #  106   0x6af69  1      OPC=nop             
  nop                                                                      #  107   0x6af6a  1      OPC=nop             
  nop                                                                      #  108   0x6af6b  1      OPC=nop             
  nop                                                                      #  109   0x6af6c  1      OPC=nop             
  nop                                                                      #  110   0x6af6d  1      OPC=nop             
                                                                                                                        
.size _ZNSt13basic_istreamIwSt11char_traitsIwEErsERs, .-_ZNSt13basic_istreamIwSt11char_traitsIwEErsERs

