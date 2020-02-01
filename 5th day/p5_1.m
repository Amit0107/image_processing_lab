 a = zeros(8,8);
 for i=1:1:8
     for j=1:1:8
         a(i,j) = exp(-2*pi*1i/16).^((i-1)*(j-1));
     end
 end
 k = 1;
 for i=1:1:8
     for j=1:1:8
         Image = a(:,j)*a(i,:);
         Imo = imag(Image);
         subplot(8,8,k),imshow(Imo);
         k = k+1;
     end
 end
 figure,
 k = 1;
 for i=1:1:8
     for j=1:1:8
         Image = a(:,j)*a(i,:);
         r0 = real(Image);
         subplot(8,8,k),imshow(r0);
         k = k+1;
     end
 end
 figure,
  b = zeros(16,16);
  for i=1:1:16
      for j=1:1:16
          b(i,j) = exp(-2*pi*1i/16).^((i-1)*(j-1));
      end
  end
  k = 1;
  for i=1:1:16
      for j=1:1:16
          Image1 = b(:,j)*b(i,:);
          Im1 = imag(Image1);
          subplot(16,16,k),imshow(Im1);
          k = k+1;
      end
  end
  figure,
  k = 1;
  for i=1:1:16
      for j=1:1:16
          Image1 = b(:,j)*b(i,:);
          r1 = real(Image1);
          subplot(16,16,k),imshow(r1);
          k = k+1;
      end
  end
 imshow(a);
 