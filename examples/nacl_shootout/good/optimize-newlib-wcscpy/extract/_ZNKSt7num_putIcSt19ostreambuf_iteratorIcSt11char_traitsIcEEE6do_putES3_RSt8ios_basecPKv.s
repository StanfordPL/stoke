  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv, @function

#! file-offset 0xc3ec0
#! rip-offset  0x83ec0
#! capacity    128 bytes

# Text                                                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv:                      #        0x83ec0  0      OPC=<label>         
  pushq %r12                                                                                                    #  1     0x83ec0  2      OPC=pushq_r64_1     
  movl %edi, %edi                                                                                               #  2     0x83ec2  2      OPC=movl_r32_r32    
  movsbl %cl, %ecx                                                                                              #  3     0x83ec4  3      OPC=movsbl_r32_r8   
  pushq %rbx                                                                                                    #  4     0x83ec7  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                                                                               #  5     0x83ec8  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                                              #  6     0x83eca  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                               #  7     0x83ecd  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                                                               #  8     0x83ed0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %r12d                                                                                  #  9     0x83ed2  5      OPC=movl_r32_m32    
  movq %rsi, (%rsp)                                                                                             #  10    0x83ed7  4      OPC=movq_m64_r64    
  movl %r12d, %edx                                                                                              #  11    0x83edb  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                                                                                                #  12    0x83ede  2      OPC=xchgw_ax_r16    
  andl $0xffffbfb5, %edx                                                                                        #  13    0x83ee0  6      OPC=andl_r32_imm32  
  orl $0x208, %edx                                                                                              #  14    0x83ee6  6      OPC=orl_r32_imm32   
  movl %ebx, %ebx                                                                                               #  15    0x83eec  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rbx,1)                                                                                   #  16    0x83eee  5      OPC=movl_m32_r32    
  movl %ebx, %edx                                                                                               #  17    0x83ef3  2      OPC=movl_r32_r32    
  nop                                                                                                           #  18    0x83ef5  1      OPC=nop             
  nop                                                                                                           #  19    0x83ef6  1      OPC=nop             
  nop                                                                                                           #  20    0x83ef7  1      OPC=nop             
  nop                                                                                                           #  21    0x83ef8  1      OPC=nop             
  nop                                                                                                           #  22    0x83ef9  1      OPC=nop             
  nop                                                                                                           #  23    0x83efa  1      OPC=nop             
  callq ._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE13_M_insert_intImEES3_S3_RSt8ios_basecT_  #  24    0x83efb  5      OPC=callq_label     
  movl %eax, (%rsp)                                                                                             #  25    0x83f00  3      OPC=movl_m32_r32    
  shrq $0x20, %rax                                                                                              #  26    0x83f03  4      OPC=shrq_r64_imm8   
  movl %ebx, %ebx                                                                                               #  27    0x83f07  2      OPC=movl_r32_r32    
  movl %r12d, 0xc(%r15,%rbx,1)                                                                                  #  28    0x83f09  5      OPC=movl_m32_r32    
  movb %al, 0x4(%rsp)                                                                                           #  29    0x83f0e  4      OPC=movb_m8_r8      
  movq (%rsp), %rax                                                                                             #  30    0x83f12  4      OPC=movq_r64_m64    
  addl $0x28, %esp                                                                                              #  31    0x83f16  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                               #  32    0x83f19  3      OPC=addq_r64_r64    
  popq %rbx                                                                                                     #  33    0x83f1c  1      OPC=popq_r64_1      
  popq %r12                                                                                                     #  34    0x83f1d  2      OPC=popq_r64_1      
  nop                                                                                                           #  35    0x83f1f  1      OPC=nop             
  popq %r11                                                                                                     #  36    0x83f20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                       #  37    0x83f22  7      OPC=andl_r32_imm32  
  nop                                                                                                           #  38    0x83f29  1      OPC=nop             
  nop                                                                                                           #  39    0x83f2a  1      OPC=nop             
  nop                                                                                                           #  40    0x83f2b  1      OPC=nop             
  nop                                                                                                           #  41    0x83f2c  1      OPC=nop             
  addq %r15, %r11                                                                                               #  42    0x83f2d  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                     #  43    0x83f30  3      OPC=jmpq_r64        
  nop                                                                                                           #  44    0x83f33  1      OPC=nop             
  nop                                                                                                           #  45    0x83f34  1      OPC=nop             
  nop                                                                                                           #  46    0x83f35  1      OPC=nop             
  nop                                                                                                           #  47    0x83f36  1      OPC=nop             
  nop                                                                                                           #  48    0x83f37  1      OPC=nop             
  nop                                                                                                           #  49    0x83f38  1      OPC=nop             
  nop                                                                                                           #  50    0x83f39  1      OPC=nop             
  nop                                                                                                           #  51    0x83f3a  1      OPC=nop             
  nop                                                                                                           #  52    0x83f3b  1      OPC=nop             
  nop                                                                                                           #  53    0x83f3c  1      OPC=nop             
  nop                                                                                                           #  54    0x83f3d  1      OPC=nop             
  nop                                                                                                           #  55    0x83f3e  1      OPC=nop             
  nop                                                                                                           #  56    0x83f3f  1      OPC=nop             
  nop                                                                                                           #  57    0x83f40  1      OPC=nop             
  nop                                                                                                           #  58    0x83f41  1      OPC=nop             
  nop                                                                                                           #  59    0x83f42  1      OPC=nop             
  nop                                                                                                           #  60    0x83f43  1      OPC=nop             
  nop                                                                                                           #  61    0x83f44  1      OPC=nop             
  nop                                                                                                           #  62    0x83f45  1      OPC=nop             
  nop                                                                                                           #  63    0x83f46  1      OPC=nop             
                                                                                                                                                             
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_RSt8ios_basecPKv

