%A cell array with the button with the answer. Number corresponds with A,B,C,D%
answers = {'pushbutton1' 'pushbutton3' 'pushbutton2' 'pushbutton1' 'pushbutton3' 'pushbutton4' 'pushbutton2' 'pushbutton3' 'pushbutton3' 'pushbutton4'};

%A 10x3 cell array that has the name of the incorrect buttons. 
%Done by piecing together 1x3 cell arrays for each questions.
%Each row corresponds to the question.%
Q1inc = {'pushbutton2' 'pushbutton3' 'pushbutton4'};
Q2inc = {'pushbutton1' 'pushbutton2' 'pushbutton4'};
Q3inc = {'pushbutton1' 'pushbutton3' 'pushbutton4'};
Q4inc = {'pushbutton2' 'pushbutton3' 'pushbutton4'};
Q5inc = {'pushbutton1' 'pushbutton2' 'pushbutton4'};
Q6inc = {'pushbutton1' 'pushbutton2' 'pushbutton3'};
Q7inc = {'pushbutton1' 'pushbutton3' 'pushbutton4'};
Q8inc = {'pushbutton1' 'pushbutton2' 'pushbutton4'};
Q9inc = {'pushbutton1' 'pushbutton2' 'pushbutton4'};
Q10inc = {'pushbutton1' 'pushbutton2' 'pushbutton3'};
wrongAnswers = {Q1inc;Q2inc;Q3inc;Q4inc;Q5inc;Q6inc;Q7inc;Q8inc;Q9inc;Q10inc};

%Sets questions number to 1 for the beginning.%
question = 1;

while question <= 10
    
%Events if correct answer is pushed right away%
    if handles.(answers(question)) %is pushed%
        question = question + 1;
        handles.pushbutton(Money).string = (question - 1) * 100000;
        
%Events if FiftyFifty lifeline is pushed%
    elseif handles.pushbuttonFiftyFifty %is pushed 
        
        %eliminates two wrong answers%
        wrongAnswers(question,1:2) = [];
        
        %carries out right/wrong decision making as normal%
        if handles.(answers(question)) %is pushed%
            question = question + 1;
            handles.pushbutton(Money).string = (question - 1) * 100000;
        elseif handles.(wrongAnswers(questions,:)) %is pushed
            moneyWon = (question - 1) * 100000;
            question = 11;
        end
        handles.pushbuttonFiftyFifty %goes away
        
%Events if ask-the-people is pushed
    elseif handles.pushbuttonAskPeople %is pushed
        %Can use the answer and incorrect answer cell arrays to figure out
        %which answers get which percentages. 
        
%Events if phone-the-genius lifeline is used%
    elseif handles.pushbuttonPhone %is pushed%
        question = question + 1;
        handles.pushbutton(Money).string = (question - 1) * 100000;
        handles.pushbuttonPhone %disappears%
        
%Events if the wrong answer is pressed first%
    elseif handles.(wrongAnswers(questions,:)) %is pushed
        moneyWon = (question - 1) * 100000;
        question = 11;
        
    end
end