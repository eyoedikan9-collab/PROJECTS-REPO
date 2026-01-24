import random
responses = {"hi": ["Hey!", "Yoo! how are you doing today?"], "hello": ["Hi there", "Whats up!"], "hey": ["Hello", "hi!"],
    "bye": ["Bye!, see ya", "Bye!, keep in touch"],
    "how are you": ["I'm doing great!", "Fine and you?"], "what do you do": ["I'm just a simple chat bot, fun to interact with.","A  simple chatbot just interacting with you!"],
    "how can you help me": ["One way is by eliminating boredom. You are free the interact with me anytime you wish.", "Probably, okay you are free to interact with me and discuss."],
    "are you a human?": ["Sorry!, no i'm not a human but just a simple Chatbot.", "No i'm not!"],
    "can you help me": ["Perhaps, maybe i can.What's the issue?", "What's the matter let me see if i can find a solution."],
    "i'm good": ["Okay", "Ohh nice", "That's Great"]}

print("Welcome, this is Chatbot...feel free to interact")

while True:
    user_ = input("You: ").lower()
    if "bye"in user_:
        print("Bot:", random.choice(responses["bye"]))
        break
    for key in responses:
        if key in user_:
            print("Bot:", random.choice(responses[key]))
            break
    if user_ != key:
        print("Ohh sorry an error occured!, can u say something simple.")
