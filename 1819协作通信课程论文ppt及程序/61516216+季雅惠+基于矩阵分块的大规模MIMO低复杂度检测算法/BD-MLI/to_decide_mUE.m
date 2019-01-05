% figure(1)
% subplot(2,3,1);W1=create_W(0,0,1);surf(W1);title('\zeta_1=\zeta_2=0 m_U_E=1');xlabel('column');ylabel('row');zlabel('normalized value');
% subplot(2,3,2);W2=create_W(0,0,2);surf(W2);title('\zeta_1=\zeta_2=0 m_U_E=2');xlabel('column');ylabel('row');zlabel('normalized value');
% subplot(2,3,3);W3=create_W(0,0,4);surf(W3);title('\zeta_1=\zeta_2=0 m_U_E=4');xlabel('column');ylabel('row');zlabel('normalized value');
% subplot(2,3,4);W4=create_W(0.3,0.1,1);surf(W4);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=1');xlabel('column');ylabel('row');zlabel('normalized value');
% subplot(2,3,5);W5=create_W(0.3,0.1,2);surf(W5);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=2');xlabel('column');ylabel('row');zlabel('normalized value');
% subplot(2,3,6);W6=create_W(0.3,0.1,4);surf(W6);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=4');xlabel('column');ylabel('row');zlabel('normalized value');
W1=create_W(256,32,0,0,0,1);
W2=create_W(128,32,0.2,0,0,1);
W3=create_W(128,32,0.5,0,0,1);
W4=create_W(256,32,0,0,0.2,4);
W5=create_W(128,32,0.2,0,0.4,4);
W6=create_W(128,32,0.5,0,0.6,4);
% subplot(2,3,1);surf(W1);title('\zeta_1=\zeta_2=0 m_U_E=1');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,2);surf(W2);title('\zeta_1=\zeta_2=0 m_U_E=2');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,3);surf(W3);title('\zeta_1=\zeta_2=0 m_U_E=4');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,4);surf(W4);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=1');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,5);surf(W5);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=2');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,6);surf(W6);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=4');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,1);imagesc(W1);title('\zeta_1=\zeta_2=0 m_U_E=1');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,2);imagesc(W2);title('\zeta_1=\zeta_2=0 m_U_E=2');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,3);imagesc(W3);title('\zeta_1=\zeta_2=0 m_U_E=4');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,4);imagesc(W4);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=1');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,5);imagesc(W5);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=2');xlabel('column');ylabel('row');zlabel('abs value');
% subplot(2,3,6);imagesc(W6);title('\zeta_1=0.3 \zeta_2=0.1 m_U_E=4');xlabel('column');ylabel('row');zlabel('abs value');