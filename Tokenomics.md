## 6. Asymmetric Trust Score & Reward Algorithm

OpenFeed utilizes an automated dynamic scaling system to determine user reputation and token distribution based on community consensus (Upvotes and Downvotes).

### 6.1 Trust Score ($T$) Calculation
Every user starts with a base Trust Score ($T_0 = 100$). The maximum score is 1000, and the minimum is 0. 

The trust score updates dynamically after each post lifecycle:
$$T_{next} = T_{current} + (\alpha \cdot V_{up}) - (\beta \cdot V_{down})$$

Where:
* $\alpha$ is the verification coefficient (weight given to truth).
* $\beta$ is the dispute penalty coefficient (heavily weighted against fake news, where $\beta > 2\alpha$).
* $V_{up}$ and $V_{down}$ represent the total weighted votes from verified network accounts.

### 6.2 Token Reward Distribution
The $FEED reward distributed to a creator for a single video/reel is directly proportional to their final verified Trust Score:
$$\text{Reward} = \left( \frac{V_{up} - V_{down}}{V_{up} + V_{down}} \right) \times \left( \frac{T}{100} \right) \times R_{base}$$

If a user's Trust Score drops below 30, their ability to post video content is temporarily locked, and their distribution yields are slashed by 80% to deter misinformation algorithms.
