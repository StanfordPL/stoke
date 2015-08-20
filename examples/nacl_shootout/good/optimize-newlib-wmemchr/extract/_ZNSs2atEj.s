  .text
  .globl _ZNSs2atEj
  .type _ZNSs2atEj, @function

#! file-offset 0xeedc0
#! rip-offset  0xaedc0
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs2atEj:                            #        0xaedc0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                #  1     0xaedc0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                       #  2     0xaedc5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                 #  3     0xaedc7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                      #  4     0xaedcc  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  5     0xaedcf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                       #  6     0xaedd2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  7     0xaedd4  4      OPC=movl_r32_m32    
  movl %esi, %r12d                      #  8     0xaedd8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                 #  9     0xaeddb  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                        #  10    0xaedde  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                       #  11    0xaede0  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi              #  12    0xaede2  4      OPC=cmpl_r32_m32    
  jae .L_aee40                          #  13    0xaede6  2      OPC=jae_label       
  movl %edx, %edx                       #  14    0xaede8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d           #  15    0xaedea  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                      #  16    0xaedef  3      OPC=testl_r32_r32   
  js .L_aee20                           #  17    0xaedf2  2      OPC=js_label        
  movl %ebx, %edi                       #  18    0xaedf4  2      OPC=movl_r32_r32    
  nop                                   #  19    0xaedf6  1      OPC=nop             
  nop                                   #  20    0xaedf7  1      OPC=nop             
  nop                                   #  21    0xaedf8  1      OPC=nop             
  nop                                   #  22    0xaedf9  1      OPC=nop             
  nop                                   #  23    0xaedfa  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv          #  24    0xaedfb  5      OPC=callq_label     
  movl %ebx, %ebx                       #  25    0xaee00  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax              #  26    0xaee02  4      OPC=movl_r32_m32    
  nop                                   #  27    0xaee06  1      OPC=nop             
  nop                                   #  28    0xaee07  1      OPC=nop             
  nop                                   #  29    0xaee08  1      OPC=nop             
  nop                                   #  30    0xaee09  1      OPC=nop             
  nop                                   #  31    0xaee0a  1      OPC=nop             
  nop                                   #  32    0xaee0b  1      OPC=nop             
  nop                                   #  33    0xaee0c  1      OPC=nop             
  nop                                   #  34    0xaee0d  1      OPC=nop             
  nop                                   #  35    0xaee0e  1      OPC=nop             
  nop                                   #  36    0xaee0f  1      OPC=nop             
  nop                                   #  37    0xaee10  1      OPC=nop             
  nop                                   #  38    0xaee11  1      OPC=nop             
  nop                                   #  39    0xaee12  1      OPC=nop             
  nop                                   #  40    0xaee13  1      OPC=nop             
  nop                                   #  41    0xaee14  1      OPC=nop             
  nop                                   #  42    0xaee15  1      OPC=nop             
  nop                                   #  43    0xaee16  1      OPC=nop             
  nop                                   #  44    0xaee17  1      OPC=nop             
  nop                                   #  45    0xaee18  1      OPC=nop             
  nop                                   #  46    0xaee19  1      OPC=nop             
  nop                                   #  47    0xaee1a  1      OPC=nop             
  nop                                   #  48    0xaee1b  1      OPC=nop             
  nop                                   #  49    0xaee1c  1      OPC=nop             
  nop                                   #  50    0xaee1d  1      OPC=nop             
  nop                                   #  51    0xaee1e  1      OPC=nop             
  nop                                   #  52    0xaee1f  1      OPC=nop             
.L_aee20:                               #        0xaee20  0      OPC=<label>         
  leal (%r12,%rax,1), %eax              #  53    0xaee20  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                  #  54    0xaee24  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                 #  55    0xaee29  5      OPC=movq_r64_m64    
  addl $0x18, %esp                      #  56    0xaee2e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  57    0xaee31  3      OPC=addq_r64_r64    
  popq %r11                             #  58    0xaee34  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  59    0xaee36  7      OPC=andl_r32_imm32  
  nop                                   #  60    0xaee3d  1      OPC=nop             
  nop                                   #  61    0xaee3e  1      OPC=nop             
  nop                                   #  62    0xaee3f  1      OPC=nop             
  nop                                   #  63    0xaee40  1      OPC=nop             
  addq %r15, %r11                       #  64    0xaee41  3      OPC=addq_r64_r64    
  jmpq %r11                             #  65    0xaee44  3      OPC=jmpq_r64        
.L_aee40:                               #        0xaee47  0      OPC=<label>         
  movl $0x1003baac, %edi                #  66    0xaee47  5      OPC=movl_r32_imm32  
  nop                                   #  67    0xaee4c  1      OPC=nop             
  nop                                   #  68    0xaee4d  1      OPC=nop             
  nop                                   #  69    0xaee4e  1      OPC=nop             
  nop                                   #  70    0xaee4f  1      OPC=nop             
  nop                                   #  71    0xaee50  1      OPC=nop             
  nop                                   #  72    0xaee51  1      OPC=nop             
  nop                                   #  73    0xaee52  1      OPC=nop             
  nop                                   #  74    0xaee53  1      OPC=nop             
  nop                                   #  75    0xaee54  1      OPC=nop             
  nop                                   #  76    0xaee55  1      OPC=nop             
  nop                                   #  77    0xaee56  1      OPC=nop             
  nop                                   #  78    0xaee57  1      OPC=nop             
  nop                                   #  79    0xaee58  1      OPC=nop             
  nop                                   #  80    0xaee59  1      OPC=nop             
  nop                                   #  81    0xaee5a  1      OPC=nop             
  nop                                   #  82    0xaee5b  1      OPC=nop             
  nop                                   #  83    0xaee5c  1      OPC=nop             
  nop                                   #  84    0xaee5d  1      OPC=nop             
  nop                                   #  85    0xaee5e  1      OPC=nop             
  nop                                   #  86    0xaee5f  1      OPC=nop             
  nop                                   #  87    0xaee60  1      OPC=nop             
  nop                                   #  88    0xaee61  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  89    0xaee62  5      OPC=callq_label     
                                                                                     
.size _ZNSs2atEj, .-_ZNSs2atEj

