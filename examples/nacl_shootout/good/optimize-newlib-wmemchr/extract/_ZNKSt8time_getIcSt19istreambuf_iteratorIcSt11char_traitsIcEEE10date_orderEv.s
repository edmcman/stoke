  .text
  .globl _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE10date_orderEv
  .type _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE10date_orderEv, @function

#! file-offset 0xb8e40
#! rip-offset  0x78e40
#! capacity    32 bytes

# Text                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE10date_orderEv:  #        0x78e40  0      OPC=<label>         
  movl %edi, %edi                                                               #  1     0x78e40  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                               #  2     0x78e42  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                      #  3     0x78e44  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                               #  4     0x78e48  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                   #  5     0x78e4a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                                        #  6     0x78e4f  6      OPC=andl_r32_imm32  
  nop                                                                           #  7     0x78e55  1      OPC=nop             
  nop                                                                           #  8     0x78e56  1      OPC=nop             
  nop                                                                           #  9     0x78e57  1      OPC=nop             
  addq %r15, %rax                                                               #  10    0x78e58  3      OPC=addq_r64_r64    
  jmpq %rax                                                                     #  11    0x78e5b  2      OPC=jmpq_r64        
  nop                                                                           #  12    0x78e5d  1      OPC=nop             
  nop                                                                           #  13    0x78e5e  1      OPC=nop             
  nop                                                                           #  14    0x78e5f  1      OPC=nop             
  nop                                                                           #  15    0x78e60  1      OPC=nop             
  nop                                                                           #  16    0x78e61  1      OPC=nop             
  nop                                                                           #  17    0x78e62  1      OPC=nop             
  nop                                                                           #  18    0x78e63  1      OPC=nop             
  nop                                                                           #  19    0x78e64  1      OPC=nop             
  nop                                                                           #  20    0x78e65  1      OPC=nop             
                                                                                                                             
.size _ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE10date_orderEv, .-_ZNKSt8time_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE10date_orderEv
