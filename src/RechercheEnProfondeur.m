function [Open,Nparcourus,Chemin]=RechercheEnProfondeur(NodeList, RootNode, TargetNode) 
 Chemin=RootNode; ;
Open = RootNode; 
Closed=[];
 Child=[];
 Nparcourus=0;


 while 1
     if (TargetNode == RootNode)
         error('fail')
         
     else 
         Node=Open(end);
         Open=Open(1:end-1);
         if(Node==TargetNode) 
             Closed=[Closed, Node]; 
             Chemin=[Chemin Node];
             break; 
         else 
             Child=NodeList(Node).Neigh; 
             if(~isempty(Child))
                 for i=1:length(Child)
                     if(~any(Open==Child(i)) && ~any(Closed==Child(i))) 
                         Open=[Open, Child(i)]; 
                        
                     end
                 end
                  Chemin=[Chemin, Node];
             end
             Closed=[Closed, Node]; 
         end 
     end 
 end
 
 
 Nparcourus=length(Closed);
                         
                      
end 
