  .text
  .globl _ZNKSs4findEPKcj
  .type _ZNKSs4findEPKcj, @function

#! file-offset 0xebba0
#! rip-offset  0xabba0
#! capacity    128 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNKSs4findEPKcj:         #        0xabba0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)   #  1     0xabba0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xabba5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)   #  3     0xabba8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)    #  4     0xabbad  5      OPC=movq_m64_r64   
  movl %edi, %ebx          #  5     0xabbb2  2      OPC=movl_r32_r32   
  subl $0x18, %esp         #  6     0xabbb4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  7     0xabbb7  3      OPC=addq_r64_r64   
  movl %edx, %r13d         #  8     0xabbba  3      OPC=movl_r32_r32   
  movl %r12d, %edi         #  9     0xabbbd  3      OPC=movl_r32_r32   
  nop                      #  10    0xabbc0  1      OPC=nop            
  nop                      #  11    0xabbc1  1      OPC=nop            
  nop                      #  12    0xabbc2  1      OPC=nop            
  nop                      #  13    0xabbc3  1      OPC=nop            
  nop                      #  14    0xabbc4  1      OPC=nop            
  nop                      #  15    0xabbc5  1      OPC=nop            
  nop                      #  16    0xabbc6  1      OPC=nop            
  nop                      #  17    0xabbc7  1      OPC=nop            
  nop                      #  18    0xabbc8  1      OPC=nop            
  nop                      #  19    0xabbc9  1      OPC=nop            
  nop                      #  20    0xabbca  1      OPC=nop            
  nop                      #  21    0xabbcb  1      OPC=nop            
  nop                      #  22    0xabbcc  1      OPC=nop            
  nop                      #  23    0xabbcd  1      OPC=nop            
  nop                      #  24    0xabbce  1      OPC=nop            
  nop                      #  25    0xabbcf  1      OPC=nop            
  nop                      #  26    0xabbd0  1      OPC=nop            
  nop                      #  27    0xabbd1  1      OPC=nop            
  nop                      #  28    0xabbd2  1      OPC=nop            
  nop                      #  29    0xabbd3  1      OPC=nop            
  nop                      #  30    0xabbd4  1      OPC=nop            
  nop                      #  31    0xabbd5  1      OPC=nop            
  nop                      #  32    0xabbd6  1      OPC=nop            
  nop                      #  33    0xabbd7  1      OPC=nop            
  nop                      #  34    0xabbd8  1      OPC=nop            
  nop                      #  35    0xabbd9  1      OPC=nop            
  nop                      #  36    0xabbda  1      OPC=nop            
  callq .strlen            #  37    0xabbdb  5      OPC=callq_label    
  movl %r13d, %edx         #  38    0xabbe0  3      OPC=movl_r32_r32   
  movl %r12d, %esi         #  39    0xabbe3  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  40    0xabbe6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12     #  41    0xabbe8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx        #  42    0xabbed  4      OPC=movq_r64_m64   
  movl %eax, %ecx          #  43    0xabbf1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13    #  44    0xabbf3  5      OPC=movq_r64_m64   
  addl $0x18, %esp         #  45    0xabbf8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  46    0xabbfb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax           #  47    0xabbfe  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs4findEPKcjj  #  48    0xabc00  5      OPC=jmpq_label_1   
  nop                      #  49    0xabc05  1      OPC=nop            
  nop                      #  50    0xabc06  1      OPC=nop            
  nop                      #  51    0xabc07  1      OPC=nop            
  nop                      #  52    0xabc08  1      OPC=nop            
  nop                      #  53    0xabc09  1      OPC=nop            
  nop                      #  54    0xabc0a  1      OPC=nop            
  nop                      #  55    0xabc0b  1      OPC=nop            
  nop                      #  56    0xabc0c  1      OPC=nop            
  nop                      #  57    0xabc0d  1      OPC=nop            
  nop                      #  58    0xabc0e  1      OPC=nop            
  nop                      #  59    0xabc0f  1      OPC=nop            
  nop                      #  60    0xabc10  1      OPC=nop            
  nop                      #  61    0xabc11  1      OPC=nop            
  nop                      #  62    0xabc12  1      OPC=nop            
  nop                      #  63    0xabc13  1      OPC=nop            
  nop                      #  64    0xabc14  1      OPC=nop            
  nop                      #  65    0xabc15  1      OPC=nop            
  nop                      #  66    0xabc16  1      OPC=nop            
  nop                      #  67    0xabc17  1      OPC=nop            
  nop                      #  68    0xabc18  1      OPC=nop            
  nop                      #  69    0xabc19  1      OPC=nop            
  nop                      #  70    0xabc1a  1      OPC=nop            
  nop                      #  71    0xabc1b  1      OPC=nop            
  nop                      #  72    0xabc1c  1      OPC=nop            
  nop                      #  73    0xabc1d  1      OPC=nop            
  nop                      #  74    0xabc1e  1      OPC=nop            
  nop                      #  75    0xabc1f  1      OPC=nop            
                                                                       
.size _ZNKSs4findEPKcj, .-_ZNKSs4findEPKcj

