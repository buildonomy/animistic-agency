# Sources of Relevance

![DALL·E 2023, prompt: Abstract painting, reminiscint of oceans, cliffs, and birds with this title: "Models call out to reality, yearning for a context wherein they are relevant"](10_introduction/figures/DALLE_yearning_for_a_context.png){#yearning-for-context}


Anyone who has taken introductory math, physics, or programming classes is surely familiar with the
concept of a function. A function is a logical description of how a set of input parameters can
transform into a new type of output value. Force equals mass times acceleration is an example of a
functional transformation, adjusting the knob on your car stereo to change the music volume is a
function. Indeed, calculating your taxes is a function as well.

Considering how elementary the concept of a function is, it's astonishing how much of my career has
been spent grappling with its implications. Functions are a very general concept but not a universal
one, although they often appear that way to a certain type of person. Most organizations view their
structure functionally. Engineers especially like to view problems as functions. A dedicated
engineer can design most any function to transform most any set of inputs into most any imaginable
set of outputs. Yet as soon as a function becomes self-referential, then its structure invites
paradox and it escapes the constraints of its original design. In an organization, functions are
almost always self referential, for organizations are dynamic and trying to learn in order for the
organization to persist. When the organization runs its functions, then the organization learns, and
the lessons it learns will likely result in changes to its functions, which then enables it to learn
new lessons, which then feed back into its functions in a (hopefully) virtuous cycle.

At SpaceX, we designed functions to fly rockets[^spacecraft]^,^[^tense]^,^[^model_function], we
designed functions to build rockets, we even designed functions to design functions to build and fly
rockets. As long as we could specify what ideas, materials, and energies we had to work with as
inputs, and as long as we could specify what sort of output we wanted to transform those inputs into
we could usually make it work out. Across the engineering disciplines we created models for how the
individual pieces of a rocket (and rocket factory) should work. We structured those models such that
they were flexible enough to accommodate the types of rockets and types of missions we predicted we
would build and fly.

[^spacecraft]: I'm only mentioning rockets here directly, but the same lessons are equally true of
    the satellites and spacecraft that we flew on the rocket.

[^tense]: I'm using the past tense when describing SpaceX because I don't work there
    anymore. Nevertheless, I am confident that many of the processes, concepts, and lessons I touch
    on are still in place and relevant.

[^model_function]: I use model, function, and code interchangeably here. All refer to the same
    concept: the ability to rigorously describe a problem such that by following the description an
    expected transformation of the inputs occurs. Model is the most generic of these terms, it
    points to a description of some structure and a mapping of that structure to certain behaviors
    that are possible with it. Function and code are mathematically and programmatically oriented
    respectively.

When each mission came along, as long as we could precisely describe where we needed to end up, we
could use our models to figure out what inputs we needed to supply to get us there. An important
part of rocket science is to design the functions that take your desired outputs---a certain orbit
with a certain payload---and figure out what inputs you need to get there---how you need to
configure your rocket to get there.

Aerospace is difficult because aerospace vehicles must operate so far beyond the normal physical
limits of our existence. Rockets and spacecraft have to endure a huge range of punishing
environments in terms of radiation, temperature, pressure, vibration, and even corrosion (when you
land in the ocean or launch near the sea). The silver lining to all of this is that each of these
environments is very predictable. A rocket has a very tight window of success, it must travel a
particular trajectory to reach the vacuum of space. Small deviations will lead to mission
failure. If the rocket deviates from its course, it will either destroy itself by exceeding its
environmental tolerances, or it will deliver its payload into the wrong orbit. Therefore, mission
analysts can predict the dynamical environment of a successful flight---the conditions the rocket
will experience during its mission---very confidently and to a high degree of precision.

What this amounts to is that aerospace as a field is particularly well suited to functional
decomposition. Problems, although difficult, are predictable. The organization can successfully
decompose the problem into a set of smaller problems, model the dynamics of each small problem, and
specify the inputs and limits of these models. They can then acquire and manufacture the components
necessary to instantiate their models and voila, a rocket is formed. What separates a _mission_ from
the vehicle are the initialization parameters that are then fed into the vehicle. Top level
parameters such as where the launch will occur, where the launch is headed, what time the launch
should occur, what the launch is carrying all affect a cascade of subsystems in a variety of ways
that determine how those systems are initialized. Intermediate parameters are derived from the
top-level constraints such as what radio frequency bands will be used and when, how much fuel to
load, and when staging and payload separation need to occur.

Viewed like this, the rocket itself is a complex function. It takes a set of inputs: a payload,
desired orbit, and purchase price, then transforms those inputs into an orbiting satellite through a
complex web of problem decomposition, calculation, manufacturing, and physics magic. In between that
input and mission success is a set of phenomena we can separate into **models** and the
**configuration** of those models.

Because my job was to define, describe, and verify processes related to flight software development,
quality, and safety, I experienced the nuance behind model building versus configuration building
first-hand. Two complex problems stem from this approach of functional decomposition. First is the
problem of versioning. When your whole organization operates as a nested web of inputs,
transformations, and outputs, yet your organization is inherently multi-discipline and must use
different tools and languages (formal or otherwise) to perform their jobs, then tracking what
inter-function dependencies exist at any node of the web, or even making the web legible at all is a
dreadfully difficult task. But without it, you have no capacity to update any internal function
safely for you cannot track it's side effects across the functional dependency graph. To resolve
this problem requires a [lingua franca](https://en.wikipedia.org/wiki/Lingua_franca) that is useful
enough for all the functions of the organization that they naturally start to describe their
functions using this common language.

Second, the manner in which you ensure a model is correct versus how you specify a configuration is
correct are complimentary but nowhere near the same problem. If you treat configuration building as
model building, then you end up with a mission that goes to the wrong place because it doesn't
initialize the proper context. For example, [Falcon 1 Flight
3](https://en.wikipedia.org/wiki/Falcon_1#Launch_attempts) failed because a configuration parameter
didn't match the flight's real context. If you treat model building as configuration building, you
limit your capacity for institutional learning, for everything you work on is treated as specific to
a particular contextual problem and your organization loses its ability to generalize. This severely
handicaps exploration and exploitation of the economic niche(s) you are developing your product to
fill.

Navigating this balance between configuration and model is a surprisingly nuanced optimization
problem. Over my eight years at SpaceX I saw the company's approach evolve considerably. Indeed,
that evolution did not start when I first joined. One benefit of source control is that you can
review development history over time. One tool I like to get a qualitative feel for the development
history of a project is [Gource](https://gource.io/). When I ran gource on the repositories managed
by the software teams, one of the most obvious sources of churn was related to figuring out how the
company wanted to handle this trade off. At first, configuration and flight software were handled in
the same repository, then various approaches were attempted until something worked well enough to
build the company's software development processes on top of.

I will not share how SpaceX designs their workflows, but there is a lesson I learned along the way
that needs to be broadly understood[^not_spacex]. Once organizations internalize this lesson,
separating 'configuration' from 'code' becomes straightforward and the benefits of doing so are
clear.

[^not_spacex]: This lesson isn't part of the SpaceX lexicon, just something I learned from my
    experiences. I did learn the phrase "one source of truth", which was a rallying cry of sorts
    when developers were trying to tame the landscape of internal tools at SpaceX, but what I'm
    talking about here extends beyond that particular aphorism.

The lesson is that all _information_ within an organization, whether models, configuration, or
otherwise, need to bind themselves to their source of relevance. If any organization forgets to
respect this binding, it will be dysfunctional. Any person, process, or tool that duplicates
information without either intentionally forking it into something new, or without spending the
effort to synchronize their copy with the original is taking an unnecessary risk. This is because
within an organization, information is always dynamic and inherently contextual. When information is
treated as static and copied, then equivocation will inevitably occur as people and processes try to
coordinate around that information, not realizing that they are talking about two different
things. This creates friction and calcification within the organization, which prevents it from
learning, adapting, and evolving to better fit its economic niche.

Phrased another way, organizational information is not composed of objects and should not be treated
as such. Instead they are a way for the agents who constitute the organization to communicate _with_
the organization itself. Therefore, each piece of information is dynamic and subject to
revision. This may sound dumb, but if it were better understood I imagine our productivity and
quality of life would both skyrocket. Broadly, this is because when we start to view organizational
information this way, then we can start to interact with our organizations as a peer. We can start
to dialogue and coordinate with it instead of assuming 'this is the way things are'. When we treat
organizational information as objects, then we just manipulate those objects with rules. But if we
treat them as messages with a source, then we can begin to understand whether this source is wise or
not, is sane or not, is interesting or not. Depending on how we interpret their behavior then we can
adopt a social posture towards the organization. We can become student or teacher, parent or child,
friend or foe with the organization itself.

Models and configuration are different ways to _communicate_ about context. Neither represents
actual context. When we specify a model, we communicate a contextual possibility. We _open_ up new
syntax for mutually understanding our shared context. On the other hand, when we define
configuration, we're communicating something about contextual relevance, and based on the syntax of
our configuration we are implicitly communicating about the models we are using to comprehend what
is relevant. Configuration thereby closes the gap between context and semantics. Models _call_ out
to reality, yearning for a context wherein they are relevant. They carve up the space of possibility
into open semantic structures, whereas configuration is a call answered. Configuration _binds_
models to context, filling semantic structures with information that then enables interaction with
the real-world through the bound models.

Models and configuration relate to relevance differently. What it means for model information to be
'correct' is fundamentally different than what it means for contextual information to be
correct. This is due to the difference between _syntactical_ versus _contextual_ correctness and the
relationship between the two. It also means that the sources of relevance for models versus
configuration are of different types.

A configuration is correct when the syntactical structure it creates matches the need within a real
contextual situation. As such, for configuration information to be correct inherently implies its
relevance. The source of relevance is the contextual moment wherein the configuration is designed to
be relevant.

A model is correct when its structure matches its type description. To be correct, its behavior must
match its signature for all permutations of input parameters[^formal_verification]. What this means
is that a model's correctness speaks nothing of its relevance. It can be simultaneously correct and
completely irrelevant. It can also be incorrect and yet relevant. A model is relevant only when it
is bound to a particular context through a configuration that is itself appropriate for the bound
context.

[^formal_verification]: For most models of any meaningful complexity, formal verification is
    intractable. Formal verification is when a proof of a model's capacity to fulfill its type
    description is constructed. In most cases, a model is verified in pieces, and only partially.

Because configuration is inherently tied to a particular context, by its nature it is
ephemeral. Configuration data relates to a particular situation at a particular time and is only
'alive' in that time and place. Because planning, predicting and historical analysis are important
modeling activities, configuration information can exist as a useful data structure outside its
window of being, but its nature at those times is different. When configuration maps to an ongoing
or future context, then it describes an _intention_ and its relevance relates to the relative
importance of that intention. When configuration maps to a historical context, then its nature is a
lesson. It semantically describes a scenario that represents a learning opportunity. It is relevant
because its carcass (by its own, or in aggregate with similar 'dead' records) contains lessons about
the behavior of the models that it was bound to while it was alive. Its relevance then relates
to the importance of the lessons its body has to teach.

By creating, curating, sharing, and using models, we are implicitly participating in collective
identity[^active_inference]. Models are only relevant if they bind to reality through joining with
semantically structured context. Therefore, by collectively creating models, we are binding them to
a source of truth related to our organization. The models are relevant insofar as the organization
intends to use them. The identity of any organization is isomorphic with the set of models that the
organization manipulates. Any organization acts through its models. Models form how the organization
senses, interprets, learns, and acts within its cultural niche.

Why is this pedantry and word-smithing important? If we can understand the relationship between
model, configuration, and their sources of relevance, then we can start to understand and interact
with organizations, and product development in less idiosyncratic ways. We don't need another app to
stovepipe off more organizational functions. We need to imbue our capacity for model building and
action with a lingua franca that allows us to pull in whatever discipline and whatever automation
fits our needs and describe our actions and intentions clearly along the way. When we understand why
we hold on to information and why we disseminate it within an organization, not only can we can
better communicate the value proposition of our ideas by relating them directly to the collective's
sources of relevance, we can also save our organization from ossification and informational cancer
by starting to automatically collect the garbage that's choking up our shared information channels.

[^active_inference]: These conclusions stem from applying [Active
    Inference](https://mitpress.mit.edu/9780262045353/active-inference/) to collective
    organizations, and will be discussed further in a later essay.

The difference between model and configuration information, and the importance of binding
information to its source of relevance are foundational to the design of buildonomy. It is why
buildonomy is not a Product Lifecycle Management _application_ even though it accomplishes much of
the same function. Instead, buildonomy provides a protocol and an engine, which when composed
together create a lingua franca for collectively building products within an evolving distributed
network. With these concepts as atomics, an organization becomes an ecosystem, populated with a
dynamic and relational web of coordinating entities, where those entities may individually represent
either persons, projects, organizations, or automata. By using these concepts (which will be
explained in detail later), buildonomy negates the need to create a centralized clearinghouse for
maintaining the identity of products, lifecycles, and their interaction points, thereby achieving
the same objectives as Product Lifecycle Management applications and even more.

To fully flesh out what buildonomy is and how it is different is going to take a few more essays, so
I hope you will bear with me. To better understand what we're after, we must first take a detour to
review what Product Lifecycle Management and Digital Twins are, folding in our distinctions between
model, configuration, context and correctness along the way. We must then review the OODA loop,
Active Inference, and Markov Blankets in order to reconceptualize what we really mean with the terms
of product, personnel, and organization. Finally we can talk about how we might optimally perform
what product lifecycle management is trying to accomplish and how buildonomy fulfills that.
