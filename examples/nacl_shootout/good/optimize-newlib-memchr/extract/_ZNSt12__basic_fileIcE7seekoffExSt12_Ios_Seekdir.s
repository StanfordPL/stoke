  .text
  .globl _ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir
  .type _ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir, @function

#! file-offset 0x11ebe0
#! rip-offset  0xdebe0
#! capacity    96 bytes

# Text                                              #  Line  RIP      Bytes  Opcode             
._ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir:  #        0xdebe0  0      OPC=<label>        
  movl %edi, %edi                                   #  1     0xdebe0  2      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                            #  2     0xdebe2  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)                             #  3     0xdebe7  5      OPC=movq_m64_r64   
  subl $0x18, %esp                                  #  4     0xdebec  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                   #  5     0xdebef  3      OPC=addq_r64_r64   
  movl %edi, %edi                                   #  6     0xdebf2  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %edi                          #  7     0xdebf4  4      OPC=movl_r32_m32   
  movq %rsi, %rbx                                   #  8     0xdebf8  3      OPC=movq_r64_r64   
  movl %edx, %r12d                                  #  9     0xdebfb  3      OPC=movl_r32_r32   
  xchgw %ax, %ax                                    #  10    0xdebfe  2      OPC=xchgw_ax_r16   
  nop                                               #  11    0xdec00  1      OPC=nop            
  nop                                               #  12    0xdec01  1      OPC=nop            
  nop                                               #  13    0xdec02  1      OPC=nop            
  nop                                               #  14    0xdec03  1      OPC=nop            
  nop                                               #  15    0xdec04  1      OPC=nop            
  nop                                               #  16    0xdec05  1      OPC=nop            
  nop                                               #  17    0xdec06  1      OPC=nop            
  nop                                               #  18    0xdec07  1      OPC=nop            
  nop                                               #  19    0xdec08  1      OPC=nop            
  nop                                               #  20    0xdec09  1      OPC=nop            
  nop                                               #  21    0xdec0a  1      OPC=nop            
  nop                                               #  22    0xdec0b  1      OPC=nop            
  nop                                               #  23    0xdec0c  1      OPC=nop            
  nop                                               #  24    0xdec0d  1      OPC=nop            
  nop                                               #  25    0xdec0e  1      OPC=nop            
  nop                                               #  26    0xdec0f  1      OPC=nop            
  nop                                               #  27    0xdec10  1      OPC=nop            
  nop                                               #  28    0xdec11  1      OPC=nop            
  nop                                               #  29    0xdec12  1      OPC=nop            
  nop                                               #  30    0xdec13  1      OPC=nop            
  nop                                               #  31    0xdec14  1      OPC=nop            
  nop                                               #  32    0xdec15  1      OPC=nop            
  nop                                               #  33    0xdec16  1      OPC=nop            
  nop                                               #  34    0xdec17  1      OPC=nop            
  nop                                               #  35    0xdec18  1      OPC=nop            
  nop                                               #  36    0xdec19  1      OPC=nop            
  nop                                               #  37    0xdec1a  1      OPC=nop            
  callq .fileno                                     #  38    0xdec1b  5      OPC=callq_label    
  movl %r12d, %edx                                  #  39    0xdec20  3      OPC=movl_r32_r32   
  movq %rbx, %rsi                                   #  40    0xdec23  3      OPC=movq_r64_r64   
  movq 0x10(%rsp), %r12                             #  41    0xdec26  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                              #  42    0xdec2b  5      OPC=movq_r64_m64   
  movl %eax, %edi                                   #  43    0xdec30  2      OPC=movl_r32_r32   
  addl $0x18, %esp                                  #  44    0xdec32  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                   #  45    0xdec35  3      OPC=addq_r64_r64   
  jmpq .lseek                                       #  46    0xdec38  5      OPC=jmpq_label_1   
  nop                                               #  47    0xdec3d  1      OPC=nop            
  nop                                               #  48    0xdec3e  1      OPC=nop            
  nop                                               #  49    0xdec3f  1      OPC=nop            
                                                                                                
.size _ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir, .-_ZNSt12__basic_fileIcE7seekoffExSt12_Ios_Seekdir

