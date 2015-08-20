  .text
  .globl _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs
  .type _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs, @function

#! file-offset 0xb76c0
#! rip-offset  0x776c0
#! capacity    96 bytes

# Text                                                                                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs:  #        0x776c0  0      OPC=<label>         
  subl $0x18, %esp                                                                                             #  1     0x776c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                              #  2     0x776c3  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                              #  3     0x776c6  2      OPC=movl_r32_r32    
  movzbl %cl, %ecx                                                                                             #  4     0x776c8  3      OPC=movzbl_r32_r8   
  movl 0x20(%rsp), %r10d                                                                                       #  5     0x776cb  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                                                              #  6     0x776d0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                     #  7     0x776d2  4      OPC=movl_r32_m32    
  movl %r10d, (%rsp)                                                                                           #  8     0x776d6  4      OPC=movl_m32_r32    
  nop                                                                                                          #  9     0x776da  1      OPC=nop             
  nop                                                                                                          #  10    0x776db  1      OPC=nop             
  nop                                                                                                          #  11    0x776dc  1      OPC=nop             
  nop                                                                                                          #  12    0x776dd  1      OPC=nop             
  nop                                                                                                          #  13    0x776de  1      OPC=nop             
  nop                                                                                                          #  14    0x776df  1      OPC=nop             
  movl %eax, %eax                                                                                              #  15    0x776e0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                                  #  16    0x776e2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                                               #  17    0x776e7  2      OPC=xchgw_ax_r16    
  nop                                                                                                          #  18    0x776e9  1      OPC=nop             
  nop                                                                                                          #  19    0x776ea  1      OPC=nop             
  nop                                                                                                          #  20    0x776eb  1      OPC=nop             
  nop                                                                                                          #  21    0x776ec  1      OPC=nop             
  nop                                                                                                          #  22    0x776ed  1      OPC=nop             
  nop                                                                                                          #  23    0x776ee  1      OPC=nop             
  nop                                                                                                          #  24    0x776ef  1      OPC=nop             
  nop                                                                                                          #  25    0x776f0  1      OPC=nop             
  nop                                                                                                          #  26    0x776f1  1      OPC=nop             
  nop                                                                                                          #  27    0x776f2  1      OPC=nop             
  nop                                                                                                          #  28    0x776f3  1      OPC=nop             
  nop                                                                                                          #  29    0x776f4  1      OPC=nop             
  nop                                                                                                          #  30    0x776f5  1      OPC=nop             
  nop                                                                                                          #  31    0x776f6  1      OPC=nop             
  nop                                                                                                          #  32    0x776f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                       #  33    0x776f8  6      OPC=andl_r32_imm32  
  nop                                                                                                          #  34    0x776fe  1      OPC=nop             
  nop                                                                                                          #  35    0x776ff  1      OPC=nop             
  nop                                                                                                          #  36    0x77700  1      OPC=nop             
  addq %r15, %rax                                                                                              #  37    0x77701  3      OPC=addq_r64_r64    
  callq %rax                                                                                                   #  38    0x77704  2      OPC=callq_r64       
  addl $0x18, %esp                                                                                             #  39    0x77706  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                              #  40    0x77709  3      OPC=addq_r64_r64    
  popq %r11                                                                                                    #  41    0x7770c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                      #  42    0x7770e  7      OPC=andl_r32_imm32  
  nop                                                                                                          #  43    0x77715  1      OPC=nop             
  nop                                                                                                          #  44    0x77716  1      OPC=nop             
  nop                                                                                                          #  45    0x77717  1      OPC=nop             
  nop                                                                                                          #  46    0x77718  1      OPC=nop             
  addq %r15, %r11                                                                                              #  47    0x77719  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                    #  48    0x7771c  3      OPC=jmpq_r64        
  nop                                                                                                          #  49    0x7771f  1      OPC=nop             
  nop                                                                                                          #  50    0x77720  1      OPC=nop             
  nop                                                                                                          #  51    0x77721  1      OPC=nop             
  nop                                                                                                          #  52    0x77722  1      OPC=nop             
  nop                                                                                                          #  53    0x77723  1      OPC=nop             
  nop                                                                                                          #  54    0x77724  1      OPC=nop             
  nop                                                                                                          #  55    0x77725  1      OPC=nop             
  nop                                                                                                          #  56    0x77726  1      OPC=nop             
  nop                                                                                                          #  57    0x77727  1      OPC=nop             
  nop                                                                                                          #  58    0x77728  1      OPC=nop             
  nop                                                                                                          #  59    0x77729  1      OPC=nop             
  nop                                                                                                          #  60    0x7772a  1      OPC=nop             
  nop                                                                                                          #  61    0x7772b  1      OPC=nop             
  nop                                                                                                          #  62    0x7772c  1      OPC=nop             
                                                                                                                                                            
.size _ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs, .-_ZNKSt9money_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE3getES3_S3_bRSt8ios_baseRSt12_Ios_IostateRSs

