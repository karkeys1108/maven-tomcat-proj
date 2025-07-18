<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Procurement Management System">
    <meta name="author" content="Procurement Team">
    <link rel="icon" href="../../favicon.ico">

    <title>Procurement Management System</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <!-- Custom styles -->
    <style>
        .procurement-card {
            border-left: 4px solid #007bff;
            transition: transform 0.2s;
        }
        .procurement-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .status-pending { border-left-color: #ffc107; }
        .status-approved { border-left-color: #28a745; }
        .status-rejected { border-left-color: #dc3545; }
        .navbar-brand {
            font-weight: bold;
        }
        .stats-card {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
    </style>
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-shopping-cart me-2"></i>
                Procurement Management System
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#purchase-requests">Purchase Requests</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#vendors">Vendors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#reports">Reports</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-4">
        <!-- Dashboard Section -->
        <section id="dashboard">
            <div class="row mb-4">
                <div class="col-12">
                    <h2><i class="fas fa-tachometer-alt me-2"></i>Procurement Dashboard</h2>
                    <p class="text-muted">Welcome to the Procurement Management System. Manage your purchase requests, vendors, and procurement activities.</p>
                </div>
            </div>

            <!-- Statistics Cards -->
            <div class="row mb-4">
                <div class="col-md-3 mb-3">
                    <div class="card stats-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h4 class="card-title">25</h4>
                                    <p class="card-text">Pending Requests</p>
                                </div>
                                <div class="align-self-center">
                                    <i class="fas fa-clock fa-2x"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card stats-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h4 class="card-title">156</h4>
                                    <p class="card-text">Approved This Month</p>
                                </div>
                                <div class="align-self-center">
                                    <i class="fas fa-check-circle fa-2x"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card stats-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h4 class="card-title">$45,230</h4>
                                    <p class="card-text">Total Spent</p>
                                </div>
                                <div class="align-self-center">
                                    <i class="fas fa-dollar-sign fa-2x"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 mb-3">
                    <div class="card stats-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h4 class="card-title">12</h4>
                                    <p class="card-text">Active Vendors</p>
                                </div>
                                <div class="align-self-center">
                                    <i class="fas fa-building fa-2x"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Quick Actions -->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h5><i class="fas fa-bolt me-2"></i>Quick Actions</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3 mb-2">
                                    <button class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#newRequestModal">
                                        <i class="fas fa-plus me-2"></i>New Purchase Request
                                    </button>
                                </div>
                                <div class="col-md-3 mb-2">
                                    <button class="btn btn-success w-100" data-bs-toggle="modal" data-bs-target="#newVendorModal">
                                        <i class="fas fa-user-plus me-2"></i>Add New Vendor
                                    </button>
                                </div>
                                <div class="col-md-3 mb-2">
                                    <button class="btn btn-info w-100">
                                        <i class="fas fa-file-export me-2"></i>Generate Report
                                    </button>
                                </div>
                                <div class="col-md-3 mb-2">
                                    <button class="btn btn-warning w-100">
                                        <i class="fas fa-cog me-2"></i>Settings
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Recent Purchase Requests -->
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h5><i class="fas fa-list me-2"></i>Recent Purchase Requests</h5>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Request ID</th>
                                            <th>Item Description</th>
                                            <th>Requested By</th>
                                            <th>Amount</th>
                                            <th>Status</th>
                                            <th>Date</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>PR-2024-001</td>
                                            <td>Office Supplies</td>
                                            <td>John Doe</td>
                                            <td>$1,250</td>
                                            <td><span class="badge bg-warning">Pending</span></td>
                                            <td>2024-01-15</td>
                                            <td>
                                                <button class="btn btn-sm btn-outline-primary">View</button>
                                                <button class="btn btn-sm btn-outline-success">Approve</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>PR-2024-002</td>
                                            <td>IT Equipment</td>
                                            <td>Jane Smith</td>
                                            <td>$3,500</td>
                                            <td><span class="badge bg-success">Approved</span></td>
                                            <td>2024-01-14</td>
                                            <td>
                                                <button class="btn btn-sm btn-outline-primary">View</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>PR-2024-003</td>
                                            <td>Marketing Materials</td>
                                            <td>Mike Johnson</td>
                                            <td>$850</td>
                                            <td><span class="badge bg-danger">Rejected</span></td>
                                            <td>2024-01-13</td>
                                            <td>
                                                <button class="btn btn-sm btn-outline-primary">View</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- New Purchase Request Modal -->
    <div class="modal fade" id="newRequestModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="fas fa-plus me-2"></i>New Purchase Request</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="itemName" class="form-label">Item Name</label>
                                <input type="text" class="form-control" id="itemName" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="category" class="form-label">Category</label>
                                <select class="form-select" id="category" required>
                                    <option value="">Select Category</option>
                                    <option value="office-supplies">Office Supplies</option>
                                    <option value="it-equipment">IT Equipment</option>
                                    <option value="furniture">Furniture</option>
                                    <option value="marketing">Marketing Materials</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="quantity" class="form-label">Quantity</label>
                                <input type="number" class="form-control" id="quantity" min="1" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="unitPrice" class="form-label">Unit Price</label>
                                <input type="number" class="form-control" id="unitPrice" step="0.01" required>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="description" class="form-label">Description</label>
                            <textarea class="form-control" id="description" rows="3"></textarea>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="priority" class="form-label">Priority</label>
                                <select class="form-select" id="priority" required>
                                    <option value="low">Low</option>
                                    <option value="medium">Medium</option>
                                    <option value="high">High</option>
                                    <option value="urgent">Urgent</option>
                                </select>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="vendor" class="form-label">Preferred Vendor</label>
                                <select class="form-select" id="vendor">
                                    <option value="">Select Vendor</option>
                                    <option value="vendor1">ABC Supplies</option>
                                    <option value="vendor2">XYZ Corporation</option>
                                    <option value="vendor3">Tech Solutions Inc</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Submit Request</button>
                </div>
            </div>
        </div>
    </div>

    <!-- New Vendor Modal -->
    <div class="modal fade" id="newVendorModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="fas fa-user-plus me-2"></i>Add New Vendor</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="vendorName" class="form-label">Vendor Name</label>
                            <input type="text" class="form-control" id="vendorName" required>
                        </div>
                        <div class="mb-3">
                            <label for="contactPerson" class="form-label">Contact Person</label>
                            <input type="text" class="form-control" id="contactPerson" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Phone</label>
                            <input type="tel" class="form-control" id="phone" required>
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <textarea class="form-control" id="address" rows="3"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="specialization" class="form-label">Specialization</label>
                            <select class="form-select" id="specialization" required>
                                <option value="">Select Specialization</option>
                                <option value="office-supplies">Office Supplies</option>
                                <option value="it-equipment">IT Equipment</option>
                                <option value="furniture">Furniture</option>
                                <option value="marketing">Marketing Materials</option>
                                <option value="general">General</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-success">Add Vendor</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-light text-center text-muted py-4 mt-5">
        <div class="container">
            <p>&copy; 2024 Procurement Management System. All rights reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Custom JavaScript -->
    <script>
        // Add some basic functionality
        document.addEventListener('DOMContentLoaded', function() {
            // Calculate total amount for purchase requests
            const unitPriceInput = document.getElementById('unitPrice');
            const quantityInput = document.getElementById('quantity');
            
            function calculateTotal() {
                const unitPrice = parseFloat(unitPriceInput.value) || 0;
                const quantity = parseInt(quantityInput.value) || 0;
                const total = unitPrice * quantity;
                
                // You could display this total somewhere in the form
                console.log('Total amount: $' + total.toFixed(2));
            }
            
            if (unitPriceInput && quantityInput) {
                unitPriceInput.addEventListener('input', calculateTotal);
                quantityInput.addEventListener('input', calculateTotal);
            }
            
            // Add success message for form submissions
            const submitButtons = document.querySelectorAll('.btn-primary, .btn-success');
            submitButtons.forEach(button => {
                if (button.textContent.includes('Submit') || button.textContent.includes('Add')) {
                    button.addEventListener('click', function() {
                        setTimeout(() => {
                            alert('Operation completed successfully!');
                        }, 500);
                    });
                }
            });
        });
    </script>
</body>
</html>


