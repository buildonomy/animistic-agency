# Buildonomy Cognitive Model

The buildonomy cognitive model is a protocol for expanding an initialization context into a dynamic
model of what it is to _be_ that context, what that context is _in the process of_ becoming and what
it _might_ become. It is the ontological basis of buildonomy as a Product Lifecycle Management
tool. This ontology is largely built up from a combination of five concepts: Entity Component
Systems architecture, Assembly Theory, Bayesian Mechanics, the four types of knowing, and the five
minds.

Entity Component Systems (ECS) is a simulation architecture well suited for dynamically interacting
with the world at large. The components of the architecture---entities, components, and
systems---are structured such that changes to any one element are legibly propagated into related
operations with minimal explicit connecting code. As of 2023, Buildonomy uses
[Legion](https://github.com/amethyst/legion) as the ECS layer. ECS is our _being_ engine, parsing
context into a multi-dimensional state-space upon which we can dynamically interact with the context
and it's adjacent possible space.

Through [Assembly Theory](https://arxiv.org/abs/2206.02279) we can construct an "Assembly Observed"
normative representation of our initial context by expanding initialization parameters into a
hierarchy of operations that describe the context's present state through a record of its
history. We also have access to the context's "Assembly Contingent" space. This defines the set of
operations that we know the context might be called into participation with. In addition we have
access to the context's "Assembly Possible" space, this defines the larger space of adjacent
entities and valid interactions with those entities. The assembly contingent and assembly possible
spaces are two representations of the _adjacent possible_ for the initialized context.

Through the adjacent possible, each initialization context is situated in an assembly landscape
within which they can navigate. In this landscape,
[intention](../10_introduction/legible_intention.md) is the selection of what assembly operations
are relevant, and at a higher level, what region of assembly possible is _interesting_ to explore
(with respect to what it means to _be_ the initialization context).

[Bayesian Mechanics](https://royalsocietypublishing.org/doi/epdf/10.1098/rsfs.2022.0029) provides a
dynamical systems representation of the initialized context as represented within the ECS. With
Bayesian mechanics can simultaneously describe the evolution of the initialization context with
respect to the assembly space representation as well as real world entities that map onto that
representation. Bayesian mechanics flavors and structures the ECS, providing constraints on the ECS
protocol for how to connect entities, components, and systems. These constraints turn reading and
executing assembly operations into a dynamic process of active inference such that the procedures
lose their rigidity and become evolving entities. They become adaptable to surprise, learning, and
coordination with the pluralistic assembly of operators---both sentient and automatons that interact
within the ECS as an execution environment. Through active inference, actions feed into both better
assembly operations as well as into the world at large through digital channels (managed as ECS
resources).

The four types of knowing and five minds provide with a hierarchical scaffolding upon which we
differentiate different types of cognitive information and function. All cognitive functions inherit
the traits of active inference, but the type of information they encode or manipulate is
different. This helps to structure cognitive complexity, thereby enforcing legibility onto the
organization.

This ontology enables us represent a dynamic context in a legible manner, even when that context
encompasses and interacts with(in) a plurality of actors, substrates, and scales. It enables
multiple actors to coordinate in order to create or manipulate new entities within a shared
representation of assembly space as well as their shared physical environment. Each 'initialization
context' affords the possibility for self-cognition, realizing what is relevant given its
constraints and intentions. Through running instances of this ontological foundation, different
organizational structures suited to different state-space exploration objectives can be
constructed. This is discussed in more detail within [TODO Cognitive Network
Design](cognitive_network_design.md).

The remainder of this document gives a high-level presentation of the concepts and structure of this
ontology. This is intended to be a design landing page, synthesizing the top-level descriptions of
all the concepts that instantiate the buildonomy cognitive model, and referencing more specialized
descriptions of the workings of these parts.

## AESOP Entity Component System

AESOP is An Electronic System of Procedures. It is the run time engine for the buildonomy cognitive
model, and is built using an ECS software architecture. The main concepts of AESOP and ECS are
enumerated below.

[Insert ECS diagram here. Should include Entities, Components, Systems, World, Resources(Lattice,
VCS, IO)]

[Entity]: #entity
[Entities]: #entity
[Entity]{#entity}

:   Anything with an ID, such that it can be referenced as a node within the lattice as well having
    its components and unique ID saved to disk.

    - Calls
    - Binds
    - Agents
    - Assembly Operations
    - Assembly Procedures
    - VCS Oids
    - Repositories
    - AsRun Logs

[Component]: #component
[Componenets]: #component
[Component]{#component}

:   Memory structures associated with one or more entity

- markdown block
- comment block
- operation block
- procedure block
- json block
- json schema block
- lattice query
- Actor
- Tokens
- Standard HTML form fields

[System]: #system
[Systems]: #system
[System]{#system}

:   A system is an ECS function that process components according to interval or change-triggered
    criteria. Systems+Resources are the mechanisms by which we generate the ECS minds. We initialize
    the ECS with system slots. These feed resources with the IN query, components, and receive the
    OUT query, components, which they then push into the ECS.


[World]: #world
[World]{#world}

:   The ECS World is a runtime environment for a set of entities, components, and systems. No single
    ÆECS instance needs to run multiple worlds simultaneously (except for (de)serialization
    purposes).

[Resource]: #resource
[Resources]: #resource
[Resources]{#resources}

:   Resources are singleton components that can be requested and shared between systems. Includes
    exterior world IO, as well as shared nested data structures (like the global lattice).

    - clocks
    - IO buffers
    - websocket
    - global lattice
    - canon
    - VCS
    - email

[Lattice]: #lattice
[Lattice]{#lattice}

:   Lattice is a Directed Acyclic Graph linking Assembly Space, ECS space, and VCS/repository space

## Assembly Theory

[Assembly Theory Explains and Quantifies the Emergence of Selection and Evolution](https://arxiv.org/abs/2206.02279)

We create a Product Lifecycle Model Assembly Space, according to the following goals and rules. By
loading up a set of assembly documents, a multi-dimensional structure is initialized. The assembly
space defines possible objects including definitions for allowed operations, thereby defining the
*assembly possible*. Through integration with an ECS world, we initialize the *assembly observed*
and the *assembly contingent* worlds.

[Procedure]: #procedure
[Procedures]: #procedure
[Procedure]{#procedure}

:   Assembly space is defined by procedures, which are structured documents of assembly
    operations. Each operation encompasses a set of `Calls`, and a `Bind` that specifies how those
    calls should interact when they all answer the call. An operation can fail because either the
    calls are not answered, or the bind did not match. In protocode, an assembly has a signature
    like:

        [Result((&({Maybe(Call(...)),}), Bind(...))),]

    Where `{}` is a set, `[]` is a list, `()` is a tuple,
    [`Option(T)`](https://doc.rust-lang.org/std/option/) has a value of `Some()`, or `None`,
    [`Result()`](https://doc.rust-lang.org/std/result/) as a value of `Ok()`, or `Err()`. `Call()`
    and `Bind()` are discussed further below. Each operation has an indexical reference,
    additionally, each operation can be named, and operations within the file can `Call()` on the
    Result\<Op\> of operations in the assembly as part of their Call set.

When an assembly is loaded, the ECS post-processes it in order to flatten it into the mind
information pool and thereby add its contents into the active context. This results in populating
caches/ECS realms with data such as:

- "access" prelude. Created from the interior sequence. Identifies the necessary
  external entities necessary to initiate and complete the assembly.
- termination postlude, Created from the interior sequence. Identifies the possible entities
  available after the operation.
- Synchronization clause. Identifies what `Bind()` operations synchronize multiple
  `substrates`. Such that binding daemons can tell when they are out of sync and respond.

1.  AsRun vs Assembly. Resulting Assembly Index
1.  Assembly space is version control and package manager friendly
1.  Tools can explore assembly space in order to recombine and find the shortest path assemblies
    according to different constraints (time until entity X, resiliency towards making entities in
    set C, minimum amount of intrastructure, etc.)


### Dimensions of Assembly Space

What are the dimensions of the space? Are they the same as capabilities? Are they the same as
substrates? Are they some sort of eigenvector within substrate/capability relations? IDs give us a
clue. If we can create a bijection between two ID sets, doesn't that imply they are orthogonal? Is
this where we need a Gauge theory? This is important because rotation/translation of the space is
important for both read and write operations, as well as for finding simplifications in the space.

- assembly index
- substrate? Call medium?
- Capability Ledger?
- version control

By defining dimensions, we can navigate through an assembly in novel ways for the purposes of
viewing and filtering the underlying objects.


### Substrates

Assembly space divides operations into substrates. Data is "written" into different mediums, be it
3D space, a database, a broadcast, etc. Assembly operations `call` into substrates in order to
bring in the reactants for the operation. If all the calls are answered, then the operation defines
the `bind` that will transform those reactants into a new assembly. The `bind` will affect the
substrates, either by digitally linking entities together via an open AsRun record and a daemon mind
that pays attention, or by transforming one or more of the callees and binding them back to their
original substrates in a different configuration.

1.  Bind semantics

    permanent and temporary binds. permanent binds result in an assembly tree, temporary are
    intermediate steps that dissipate if an assembly operation is not successful.

    A successful bind writes to 

1.  Call semantics

    - Defined within Assembly space, but executed through ECS space.
    - Operations can modify the state space or isolate/move a model within a particular region of
      its state space.
    - Defining the state space occurs through a series of these navigation records, in the same way
      as database transactions define their structure
    - Running an update triggers potential inter-substrate synchronizations (to synchronize
      substrate specific representations of the same entity). Inter-substrate occurs because the
      entities share a common set of bottom substrate-elements.
    - Running an update triggers potential intra-substrate synchronizations (as multiple entities
      within the same substrate may share Top elements and _should_ be kept synchronized, like for
      software updates or hardware recalls).

- assembly space refers to entities based on their (synchronized) substrate(s). In this way, one
  entity model can be defined in one place and data translated into multiple physical locations.

- assembly space layers available data mutations on top of entities. Assemblies 'open up' entity
  configuration for later layers by defining or updating capabilities within the entity.

- Embedded in Assembly space
- Each dimensional description is a poset, with internal structure based on sub-component references
  and inter-relation meta data
- Each Dimension has its own type, which constrains the poset further into a more-specific
  structure.
- Each dimension has a natural ordering, per its poset structure. This enables us to use
  cryptographic identifiers to reference each dimension's structure

All substrates need to be initially identified by URI and schema per the assembly space
capability/token schema

Assembly space can identify unique access protocols to the URI format?

- FS
- DB
- CAD space (cartesian space with ID-defined origin)
- etc.
- "Platonic realm/Assembly Realm": The full state space definition in this format

### Capabilities/Components/Subsystems:

Capabilities are a functional space internal to assembly space, defined by: arguments, assembly
space tokens (b/c assembly space is a substrate).

Capability tokens become a way of globbing for relevance, identifying relevant entities based on a
nested set of substrate tokens

Capability semantics. Each substrate can define their token space, granting entities within their
jurisdiction certain 'colors', this can implement such features as roles, a special data attribute
enable supplementing available entities with the access and mutation privileges within their domain.


#### tokens

substrates
capabilities
roles
uri
navigation
subassembly
ECS root

## Active Inference

What is surprise and prediction? How does it affect adjacent possible and activating procedures?
Surprise/prediction are a special combination of dreaming and ancestor minds, and difference in
perceived exterior state and open assembly procedures.

Adversarial partnership? Could this be related to exception handling within the procedures? That has
a nice counterfactual ring to it. Essentially this would be doing something like initializing
"shadow" minds that explore the counterfactual space interior to and between assembly procedures.

Forgetting protocol? This would be part of assembly rebalancing right? VCS enables risk-free
'forgetting'.

## Cognitive Differentiation within the ECS

![The five minds interrelate with the four realms of knowing in order to form agential intentions
and actions](figures/the_minds_and_their_realms.png){#the-minds-and-their-realms width=50%}

[Mind]: #mind
[Minds]: #mind
[Mind]{#mind}

:   A Mind can be defined as a unique tuple of:

        ({resources}, IN{latticeQuery}, IN{Components}, OUT{LatticeQuery}, OUT{Components})

[Realm]: #realm
[Realms]: #realm
[Realm]{#realm}

:   Realms are defined as particular regions of the lattice which have a certain hierarchical
    relationship with one another.

[Insert diagram of Lattice to VCS to Realm to Component interaction diagram here]


1.  **Assembly Space** functions as an inter-subjective map to the normative (becoming) realms
    within buildonomy **ECS** instances.
1.  ECS is first and foremost a participatory framework. By initializing the ECS, a minimal
    "bootstrapping" set of *pattern minds* are initialized, as well as the ECS 'world', which
    functions as the *participatory realm* while the ECS is active.
1.  The bootstrapping minds then load the requested assembly graph, the "assembly observed" set of
    assembly space. When we load assembly observed we flatten the assembly into the intrinsic realms.

    - By initializing the *procedural realm* we access the full suite of minds for the instance (or
      if not dynamic, write a 'full' command to disk for an executor system to reload the ECS
      instance.
    - In assembly space, by delineating catalyst from ingredient, we recursively separate entity
      interior vs exterior. We can then find the sensing and action markov blankets for the session
      by looking at the properties of these two sets of entities.

1.  The assembly language within assembly space is processed by *kinship minds* in order to
    synchronize the ECS *perspectival realm*.
1.  *Dreaming minds* act as a cache/filter on the *perspectival realm* to zero in on the active top
    entities (per the extrinsic assembly space lattice), and cache their capabilities (and markov
    blankets?).
1.  *Ancestor minds* filter the *adjacent possible*, both forming intention to load/save *assembly
    logs/redlines/procedures to extrinsic substrates*, as well as *masking adjacent procedures* to
    implement predictive processing *precision* through manipulating the *imaginal realm*.
1.  *Ego minds* execute the adjacent possible that's mapped in imaginal space, thereby changing
    being and becoming.
1.  *Active procedures* exist within the imaginal realm.
