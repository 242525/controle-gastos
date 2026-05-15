import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analise de Gastos"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(0, 200, 83, 0.2),
                      blurRadius: 30,
                      spreadRadius: 10,
                    ),
                  ],
                  gradient: const SweepGradient(
                    colors: [
                      AppTheme.primaryGreen,
                      Colors.blue,
                      Colors.orange,
                      AppTheme.errorRed,
                      AppTheme.primaryGreen,
                    ],
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: const BoxDecoration(
                      color: AppTheme.background,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Total",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        const Text(
                          "R\$ 842,15",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Distribuicao por Categoria",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            _buildReportRow("Alimentacao", "R\$ 320,00", AppTheme.primaryGreen, 0.38),
            _buildReportRow("Transporte", "R\$ 150,00", Colors.blue, 0.18),
            _buildReportRow("Lazer", "R\$ 200,00", Colors.orange, 0.24),
            _buildReportRow("Saude", "R\$ 172,15", AppTheme.errorRed, 0.20),
          ],
        ),
      ),
    );
  }

  Widget _buildReportRow(String category, String value, Color color, double percent) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(category, style: const TextStyle(color: Colors.white))),
          Text(value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
