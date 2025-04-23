import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashee_dashboard/utils/constants/colors.dart';

class SubscriptionPlanScreen extends StatelessWidget {
  final List<SubscriptionPlan> plans = [
    SubscriptionPlan(
      title: "BASIC PLAN",
      price: "₹199",
      features: [
        "Flat Percentage Discount",
        "Fixed Amount Discount",
        "Basic Rewards",
        "Seasonal Offers"
      ],
    ),
    SubscriptionPlan(
      title: "STANDARD PLAN",
      price: "₹499",
      features: [
        "BOGO",
        "Referral Coupons",
        "Seasonal Sale Offers",
        "Customizable Rewards",
        "VIP Support"
      ],
    ),
    SubscriptionPlan(
      title: "PREMIUM PLAN",
      price: "₹999",
      features: [
        "Loyalty-Based Discounts",
        "Cashback",
        "VIP Support",
        "Premium Rewards",
        "Exclusive Discounts",
        "Enhanced Customer Support",
        "Early Access to New Offers"
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.body,
      appBar: AppBar(
        backgroundColor: TColors.primary,
        title: Text("Subscription Plans"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: constraints.maxWidth > 1000 ? 3 : constraints.maxWidth > 600 ? 2 : 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 3 / 4,
              ),
              itemCount: plans.length,
              itemBuilder: (context, index) {
                return PlanCard(plan: plans[index]);
              },
            ),
          );
        },
      ),
    );
  }
}

class SubscriptionPlan {
  final String title;
  final String price;
  final List<String> features;

  SubscriptionPlan({
    required this.title,
    required this.price,
    required this.features,
  });
}

class PlanCard extends StatelessWidget {
  final SubscriptionPlan plan;

  PlanCard({required this.plan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blueAccent, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            spreadRadius: 3,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back, color: TColors.textPrimary),
              ),
              const SizedBox(width: 8),
              const Text(
                "Subscription Plan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: TColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            plan.title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          SizedBox(height: 8),
          Text(
            plan.price,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          Text("/month", style: TextStyle(fontSize: 14, color: Colors.black54)),
          SizedBox(height: 8),
          Divider(),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: plan.features
                  .map((feature) => Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Text(
                  "• $feature",
                  style: TextStyle(fontSize: 16, fontWeight: feature == plan.features.first ? FontWeight.bold : FontWeight.normal),
                ),
              ))
                  .toList(),
            ),
          ),
          SizedBox(height: 12),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.blueAccent, width: 2),
              ),
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
            ),
            onPressed: () => Get.snackbar("Selected Plan", "You chose ${plan.title}"),
            child: Text(
              "CHOOSE PLAN",
              style: TextStyle(fontSize: 16, color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
