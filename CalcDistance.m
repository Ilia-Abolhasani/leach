function Out=CalcDistance(Node1,Node2)
DeltaX=(Node1.X-Node2.X)^2;
DeltaY=(Node1.Y-Node2.Y)^2;
Out=sqrt(DeltaX+DeltaY);
end