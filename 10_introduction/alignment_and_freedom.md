# AI Alignment and Freedom

(pulled from latest lesswrong draft)

## Summary

If AI Alignment is framed as alignment to any single human-instantiable value-system, then
introduction of a superintelligence, even if perfectly aligned, will result in a restriction of
human freedoms in a manner contrary to the ideals of Liberal Political Philosophy. A summary of the
argument is as follows. Every agent is intrinsically incentivized to change its environment to
maximize its values. Every agential value acts as a force on the environment who's magnitude is
proportional to the agent's intelligence, the value's importance within the agent's value system,
and the immediate environment's state. Regardless of an agent's intelligence and value-system,
certain environments exclude meaningful action on values the environment is incapable of
expressing. Holding such values does not improve the fitness of an agent, and if the agent
population is subject to evolutionary pressure, will be removed from the population over
time. Therefore, since a machine superintelligence shares the human environment and since its
potential values represent the strongest potential force within the human environment, the
value-system of the superintelligence represents a boundary condition on available human value
systems. Value-system boundary conditions are synonymous with available freedoms. This conclusion
holds for all flavors of artificial intelligence, from fully independent agents, to genie, oracle,
and tool architectures as the human-machine system retains agency subject to the same argument.

## Assumptions

Utility Function, Value System Correspondence
:   AI Alignment crucially depends on a conception of good outcome for human beings and/or human
    culture. The alignment community seems to agree that the most practical framework for discussing
    and designing an intelligence's alignment is a utility function, which is an explicit or
    implicit functional system deeply embedded into the architecture of the intelligence. which the
    intelligence uses to sort its potential actions and focus its attention. Within this essay, I
    will use the term value system, rather than utility function, both for brevity and because that
    is a more anthropocentric term, which is important for the essay's content. In practice, I
    believe these terms are synonymous, notably because neither can currently be explicitly defined
    within the context of alignment research.

Agent-Environment Interaction
:   An Embedded Agent's behavior at any moment in time can be described with the following set of
    properties:

    1. The state of the local environment the agent is embedded in (where local corresponds to the
       environment the agent can immediately sense, effect, or be effected-by),
    1. a set of sensing mechanisms capable of turning phenomena from the environment into internal
       signals,
    1. a set of effecting mechanisms capable of turning internal signals into phenomena within the
       environment,
    1. an information processing system capable of storing, updating, and executing
       ontologies/models of arbitrary phenomena, and
    1. a utility function/value system whose function is to filter potential internal processing
       operations into a stream of actualized information processing operations.

Steady State Analysis
:   This argument makes a steady state argument about the agent-environment, it does not make any
    dynamical assumptions on how the agent-environment will evolve before reaching a final state. As
    an example, if a highly capable agent is introduced full-cloth into an existing environment, we
    can assume the agent-environment will initially best be represented as a dynamical system, where
    this analysis offers minimal predictive power. Instead, this analysis asks the question: given
    agent $$\(A\)$$, and an environment $$\(E_{initial}\)$$, what predictions can we make about
    $$\(E_{final}\)$$ given the initial properties of $$\(A\)$$?

## The Argument

### Premise 1: A Value-System is a Necessary Property of an Embedded Agent

In order for an embedded agent to successfully interact with it's environment, it must have an
attention system. An attention system orders potential internal computations into realized
computations. This ordering is a function of immediately available information (e.g. sense data and
the agent's last state), and of the agent's value system. An attention mechanism is required because
processing capacity is a fundamental bottleneck for any embedded agent. For an agent to have any
predictive power, and therefore achieve any fitness, it cannot manipulate its internal state for an
indefinite time period before re-acquiring environmental input (and/or commanding output). This
means that input information run through internal processes must represent close-to the actual state
of its immediate environment. Even with limited memory, any agent is capable of manipulating an
arbitrarily large number of internal models given infinite time, but is incapable of executing every
possible internal model at any arbitrary time step. Therefore, for an embedded agent to have any
fitness, it requires an attention mechanism, and therefore a value-system in order to filter
potential internal operations into a computable subset.

### Premise 2: Values Change the Environment

Were we to clone an initial environment $$\(E_i\)$$, and place agent $$\(A_{1i}\)$$ in one copy, and
agent $$\(A_{2i}\)$$ into the other, where $$\(A_{1i}\)$$ and $$\(A_{2i}\)$$ are identical besides
their value systems, then come back remove the agents and observe the remaining environments
$$\({E}_{1t}\)$$, and $$\(E_{2t}\)$$ after some time $$\(t\)$$, we would find the environments to be
different to a degree exceeding any stochastically derived expectation.

Since intelligent system's attention is filtered through their value system, they are bound to
re-shape their local environment in a manner that reflects their values. The manner in which the
environment is re-shaped will preferentially reward any agential system that shares that value over
an agent which does not.

### Premise 3: Values Describe a Force Acting on an Agent-Environment

If an intelligence can manipulate its environment, we can model each of the intelligence's values as
a force within the agent's environment. The strength of each "value-force" is proportional to 1) the
intelligence of the agent, 2) the capabilities of the agent's sense and effect mechanisms, and 3)
the likelihood of the value being in-attention within the agent, which is proportional to relative
strength of the value within the Agent's value-system as well as the environmental conditions. A
value force operates internally and externally, internally by changing the agent's capabilities to
better optimize for achieving the value, and externally by changing the environment to enable more
potential value-extraction for the agent.

### Premise 4: Value Systems Are Constrained By Their Environment

If it is true that value-systems are a principle attribute of an embedded agent's attention
mechanism, than value-systems must have a bi-directional relationship with the agent's environment
when the agent is subject to environmental fitness constraints. This is because any hypothesized
reward signal is a function of both the agent's value system as well as the conditions within the
immediate environment. If environmental conditions are completely orthogonal to all of the agent's
values, then the agent has no possibility of attaining any reward. Lack of any possible reward
signal implies the agent is incapable of any agentic behavior unless the environment or the agent's
values change. An agent is incapable of re-shaping it's environment to its values unless it can
perform agentic behavior.

### Premise 5: The Principle Forces Shaping an Agent-Environment are Causally Attributable to the Most Capable Agent(s) Within the Environment

As the capabilities of an agent increase, then the effects of the agent on its environment become
more pronounced. With increasing planning capacity, an agent is capable of more powerful direct
interventions, but most importantly, is capable of manipulating and channeling pre-existing forces
within the environment to serve its purposes. Pre-existing forces can be physical or agentic in
nature. An agent's capacity to recruit and/or circumvent other agents within the environment will be
highly correlated with its capacity to plan and effectively model the external agents.

### Conclusion

**Within any Multi-Agent Environment, Available Agential Value-Systems Are Principally Constrained
by the Most Capable Agent's Value-System**

The possible values that any agent can act upon are dependent on the properties of their
environment, and the properties of their environment are dependent on the strongest value-forces
within the environment. The strongest value-forces are determined by the most capable agent within
the environment.

Any form of artificial general intelligence is very likely to be (a part of) the most capable agent
within the human environment. As such, the goal of alignment should not be for an artificial
intelligence's value-system to correspond with any single entity's value-system, rather to
correspond with the boundary conditions humanity is willing to prescribe onto the set of available
human value systems. As such, there is a direct correspondence between the value-system of an
aligned superintelligence and available human freedoms. Political philosophy, especially in the
liberal tradition, is likely to offer valuable insights as to what sets of freedoms are generally
deemed sufficient to protect our shared culture, our well-being and our happiness.

### Correlary 1

**Within the Human-Environment, All Possible Machine Intelligence Architectures Correspond to an
Agential Architecture**

All possible artificial intelligence architectures correspond to an agential architecture when
considered within the human environment, as all possible machine intelligence architectures are
developed with the intention of extending human agency. Therefore, the above argument holds for any
artificial intelligence architecture, be it sovereign, genie, oracle, or tool. For the different AI
architectures, the relevant agent may be purely machine, or a agent system composed of one or more
humans interacting with one or more machine intelligence. In such combined system scenarios, the
value-system that needs to maintain alignment properties is a function of all sub-agents within the
combined system.


## Commentary

Charlie Steiner1yΩ020

Suppose I have a self-driving car planning a route, and a superintelligent traffic controller "trying to help the car." The superintelligent traffic controller knows what route my car will pick, and so it tweaks the timing of the light slightly so that if the car takes the route it will in fact pick, everything is smoother and safer, but if it takes any other route, it will hit red lights and go slower.

Is this the sort of loss of freedom you mean?

What if, if my car tried to deviate from the route that's best according to its normal routing algorithm, the superintelligent traffic controller will for some reason not turn on some of the lights, so that if the car deviated it would actually get stuck permanently (though of course we never observe this).

This definitely seems like a loss of freedom. Actually it kinds of remind me of a great sci-fi story about free will by Paul Torek. But also, it doesn't produce effects and doesn't really seem like anything worth worrying about,

Reply
winstonne1y
Ω030

Hmm, Looks like I should add an examples section and more background on what I mean related to freedom. What you are describing sounds like a traffic system that values ergodic efficiency of it's managed network and you are showing a way that a participant can have very non-ergodic results. It sounds like that is more of an engineering problem than what I'm imagining.

Examples off the top of my head of what I mean with respect to loss of freedom resulting from a powerful agent's value system include things like:

    paperclip maximizer terraforming the earth prevents any value-systems other than paperclip maximization from sharing the earth's environment.
    human's value for cheap foodstuffs results in mono-culture crop fields, which cuts off forest grassland ecosystem's values, (hiding places, alternating food stuffs which last through the seasons, etc.)
    Drug dependent parent changes a child's environment, preventing freedom for a reliable schedule, security, etc.
    Or, riffing off your example: superintelligent traffic controller starts city-planning, bulldozing blocks of car-free neighborhoods because they stood in the way of a 5% city-wide traffic flow improvement

Essentially what I'm trying to describe is that freedoms need to be a value onto themselves that has certain characteristics that are functionally different than the common utility function terminology that revolves around metric maximization (like gradient descent). Freedoms describe boundary conditions within which metric maximization is allowed, but describe steep penalties for surpassing their bounds. Their general mathematical form is a manifold surrounding some state-space, whereas it seems the general form of most utility function talk is finding a minima/maxima of some state space.

Reply
Charlie Steiner1y
20

Your example bad things seem bad for reasons unrelated to their effect on freedom. I don't want car-free neighborhoods bulldozed because I like neighborhoods more than piles of rubble.

Maybe think about examples where the the the available state space to an agent is changed without the optima changing.

And more subtly, since "available state space" is an emergent concept used when talking about agents that make choices, not a fundamental part of the world, consider whose point of view you're taking. If I make plans as if many actions are possible, but Laplace's demon predicts me as if they're not, this isn't a contradiction, it's an unresolved choice of perspective.

Reply
winstonne1y
10

I'm not following your final point. Regardless of determinism, the "state space" I can explore as an embedded agent is constrained by the properties of the local environment. If I value things like a walkable neighborhood, but I'm stuck in a pile of rubble, that's going to constrain my available state space and accordingly it's going to constrain my ability to have any rewarding outcome. McTraffic, by not allotting freedoms to me when executing their transportation redesign impeded on my freedom (which was mostly afforded to me through my and my neighbors property rights). 

Freedoms (properly encoded), I believe are the proper framing for creating utility functions/value-systems for critters like our friendly neighborhood traffic agent. Sure, the traffic agent values transportation efficiency, but since it also values other agent's freedom to property rights, they will limit their execution of their traffic efficiency preferences within a multi-agent shared environment to minimize the restriction to property rights. To me, this seems simpler, and less error prone than any approach that tries to infer my values (or human preferences more generally) and act according to that inference.

Freedoms assume awareness of external (embedded) agency, they are values you afford to other agents. They have a payoff because you are then afforded them back. This helps to ensure agents do not unilaterally bulldoze (literally or figuratively) the "available state space" for other agents to explore and exploit.

Reply
Charlie Steiner1y
20

    If I value things like a walkable neighborhood, but I'm stuck in a pile of rubble, that's going to constrain my available state space and accordingly it's going to constrain my ability to have any rewarding outcome.

And if you value rubble, having it replaced by a walkable neighborhood would constrain your available state space. It's symmetrical.

I worry you are just "seeing the freedom" inherent in the neighborhood more easily because you like freedom and you also like walkable neighborhoods. But this leads you to picking examples where the two different kinds of liking are all mixed up.

    Sure, the traffic agent values transportation efficiency, but since it also values other agent's freedom to property rights, they will limit their execution of their traffic efficiency preferences within a multi-agent shared environment to minimize the restriction to property rights. To me, this seems simpler, and less error prone than any approach that tries to infer my values (or human preferences more generally) and act according to that inference.

But this precisely is an approach that tries to infer your values! It has to model you a certain way (as having certain freedoms like turning right vs. left, but not other freedoms like being able to fly). And I like the vision overall, but I think if you make it too strict you'll end up with an AI that's not making choices to defend a certain state of affairs, and so it's going to do silly things and get outcompeted by other forces.

Reply
winstonne1y
30

Ah ok, I think I'm following you. To me, freedom describes a kind of bubble around a certain physical or abstract dimension, who's center is at another agent. It's main use is to limit computational complexity when sharing an environment with other agents. If I have a set of freedom values, I don't have to infer the values of the agent so long as I don't enter their freedom bubbles. In the traffic example, how the neighborhood is constructed should be irrelevant to McTraffic, all it needs to know is a) there are other agents present in the neighborhood already, and b) it wants to change the nature of the neighborhood, which will enter the other agent's freedom bubbles. Therefore it needs to to negotiate with the inhabitants (so yes, at this step there's an inference via dialogue going on).
Reply
