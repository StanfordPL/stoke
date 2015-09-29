  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx, @function

#! file-offset 0xb86e0
#! rip-offset  0x786e0
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx:  #        0x786e0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x786e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x786e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x786e5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x786e8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x786ea  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x786ec  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x786f0  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x786f3  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                         #  9     0x786f5  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x786fa  1      OPC=nop             
  nop                                                                                  #  11    0x786fb  1      OPC=nop             
  nop                                                                                  #  12    0x786fc  1      OPC=nop             
  nop                                                                                  #  13    0x786fd  1      OPC=nop             
  nop                                                                                  #  14    0x786fe  1      OPC=nop             
  nop                                                                                  #  15    0x786ff  1      OPC=nop             
  nop                                                                                  #  16    0x78700  1      OPC=nop             
  nop                                                                                  #  17    0x78701  1      OPC=nop             
  nop                                                                                  #  18    0x78702  1      OPC=nop             
  nop                                                                                  #  19    0x78703  1      OPC=nop             
  nop                                                                                  #  20    0x78704  1      OPC=nop             
  nop                                                                                  #  21    0x78705  1      OPC=nop             
  nop                                                                                  #  22    0x78706  1      OPC=nop             
  nop                                                                                  #  23    0x78707  1      OPC=nop             
  nop                                                                                  #  24    0x78708  1      OPC=nop             
  nop                                                                                  #  25    0x78709  1      OPC=nop             
  nop                                                                                  #  26    0x7870a  1      OPC=nop             
  nop                                                                                  #  27    0x7870b  1      OPC=nop             
  nop                                                                                  #  28    0x7870c  1      OPC=nop             
  nop                                                                                  #  29    0x7870d  1      OPC=nop             
  nop                                                                                  #  30    0x7870e  1      OPC=nop             
  nop                                                                                  #  31    0x7870f  1      OPC=nop             
  nop                                                                                  #  32    0x78710  1      OPC=nop             
  nop                                                                                  #  33    0x78711  1      OPC=nop             
  nop                                                                                  #  34    0x78712  1      OPC=nop             
  nop                                                                                  #  35    0x78713  1      OPC=nop             
  nop                                                                                  #  36    0x78714  1      OPC=nop             
  nop                                                                                  #  37    0x78715  1      OPC=nop             
  nop                                                                                  #  38    0x78716  1      OPC=nop             
  nop                                                                                  #  39    0x78717  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x78718  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x7871e  1      OPC=nop             
  nop                                                                                  #  42    0x7871f  1      OPC=nop             
  nop                                                                                  #  43    0x78720  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x78721  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x78724  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x78726  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x78729  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x7872c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x7872e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x78735  1      OPC=nop             
  nop                                                                                  #  51    0x78736  1      OPC=nop             
  nop                                                                                  #  52    0x78737  1      OPC=nop             
  nop                                                                                  #  53    0x78738  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x78739  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x7873c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x7873f  1      OPC=nop             
  nop                                                                                  #  57    0x78740  1      OPC=nop             
  nop                                                                                  #  58    0x78741  1      OPC=nop             
  nop                                                                                  #  59    0x78742  1      OPC=nop             
  nop                                                                                  #  60    0x78743  1      OPC=nop             
  nop                                                                                  #  61    0x78744  1      OPC=nop             
  nop                                                                                  #  62    0x78745  1      OPC=nop             
  nop                                                                                  #  63    0x78746  1      OPC=nop             
  nop                                                                                  #  64    0x78747  1      OPC=nop             
  nop                                                                                  #  65    0x78748  1      OPC=nop             
  nop                                                                                  #  66    0x78749  1      OPC=nop             
  nop                                                                                  #  67    0x7874a  1      OPC=nop             
  nop                                                                                  #  68    0x7874b  1      OPC=nop             
  nop                                                                                  #  69    0x7874c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecx

