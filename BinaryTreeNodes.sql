SELECT 
    A.N, 
    CASE 
        WHEN A.P IS NULL THEN 'Root' 
        WHEN EXISTS (SELECT 1 FROM BST WHERE P = A.N) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM 
    BST A
ORDER BY 
    N;
